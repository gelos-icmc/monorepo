{
  description = "Infraestrutura principal para serviços hospedados pelo GELOS";

  nixConfig = {
    extra-substituters = [
      "https://gelos-icmc.cachix.org"
    ];
    extra-trusted-public-keys = [
      "gelos-icmc.cachix.org-1:IQxtwf+SS2LUWWoPgzYQMAYUvsBA+7tdooE42KRcCWk="
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    systems.url = "github:nix-systems/default";

    hardware.url = "github:nixos/nixos-hardware";
    nix-flatpak.url = "github:gmodena/nix-flatpak";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    deploy-rs = {
      url = "github:serokell/deploy-rs";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sops-nix = {
      url = "github:mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-minecraft = {
      url = "github:misterio77/nix-minecraft";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    systems,
    deploy-rs,
    ...
  } @ inputs: let
    inherit (self) outputs;
    inherit (nixpkgs.lib) genAttrs getExe mapAttrs' mapAttrs filterAttrs elem nameValuePair;
    forAllSystems = f: genAttrs (import systems) (system: f nixpkgs.legacyPackages.${system});
    prefixAttrs = pfx: mapAttrs' (n: v: nameValuePair "${pfx}${n}" v);
  in {
    nixosConfigurations = {
      adelie = nixpkgs.lib.nixosSystem {
        modules = [./hosts/servers/adelie/configuration.nix];
        specialArgs = {inherit inputs outputs;};
      };
      /*
      galapagos = nixpkgs.lib.nixosSystem {
        modules = [./hosts/servers/galapagos/configuration.nix];
        specialArgs = {inherit inputs outputs;};
      };
      */
      emperor = nixpkgs.lib.nixosSystem {
        modules = [./hosts/servers/emperor/configuration.nix];
        specialArgs = {inherit inputs outputs;};
      };
      macaroni = nixpkgs.lib.nixosSystem {
        modules = [./hosts/desktops/macaroni/configuration.nix];
        specialArgs = {inherit inputs outputs;};
      };
      rockhopper = nixpkgs.lib.nixosSystem {
        modules = [./hosts/desktops/rockhopper/configuration.nix];
        specialArgs = {inherit inputs outputs;};
      };
    };

    deploy.nodes = let
      activate = kind: config: deploy-rs.lib.${config.pkgs.system}.activate.${kind} config;
    in {
      adelie = {
        hostname = "adelie.gelos.club";
        sshUser = "admin";
        sshOpts = ["-o" "StrictHostKeyChecking=no"];
        profiles.system = {
          user = "root";
          path = activate "nixos" self.nixosConfigurations.adelie;
        };
      };
      emperor = {
        hostname = "emperor.gelos.club";
        sshUser = "admin";
        sshOpts = ["-p" "2112" "-o" "StrictHostKeyChecking=no"];
        profiles.system = {
          user = "root";
          path = activate "nixos" self.nixosConfigurations.emperor;
        };
      };
      /*
      galapagos = {
        hostname = "galapagos.gelos.club";
        sshUser = "admin";
        sshOpts = ["-p" "2112"];
        profiles.system = {
          user = "root";
          path = activate "nixos" self.nixosConfigurations.galapagos;
        };
      };
      */
    };

    packages = forAllSystems (pkgs: rec {
      site = pkgs.callPackage ./site/default.nix {};
      identidade-visual = pkgs.callPackage ./identidade-visual/default.nix {};
    });

    apps = forAllSystems (pkgs: rec {
      deploy = {
        type = "app";
        program = getExe pkgs.deploy-rs;
      };
      github-eval-checks = {
        type = "app";
        # Use nix-eval-jobs to evaluate all checks, and convert into a format github-actions can use as matrix
        # The difference between this and nix-github-actions is that our matrix will have access to the out/drvPath as well as cached status
        program = getExe (pkgs.writers.writePython3Bin "github-eval-checks" { flakeIgnore = ["E501"]; } ''
          import json
          import subprocess

          # From https://github.com/nix-community/nix-github-actions
          githubPlatforms = {
              "x86_64-linux": "ubuntu-24.04",
              "x86_64-darwin": "macos-13",
              "aarch64-darwin": "macos-14",
              "aarch64-linux": "ubuntu-24.04-arm",
          }
          command = subprocess.run(["${getExe pkgs.nix-eval-jobs}", "--force-recurse", "--check-cache-status", "--flake", ".#checks"], capture_output=True)
          jobs = map(json.loads, command.stdout.decode('utf-8').splitlines())
          matrix = {'include': []}
          for job in jobs:
              [system, name] = job['attrPath']
              attr = f"checks.{system}.{name}"
              matrix['include'].append({
                  'name': name,
                  'system': system,
                  'attr': attr,
                  'os': githubPlatforms[system],
                  'isCached': job['isCached'],
                  'drvPath': job['drvPath'],
                  'outPath': job['outputs']['out']
              })

          print(json.dumps(matrix))
        '');
      };
      default = deploy;
    });

    formatter = forAllSystems (pkgs: pkgs.alejandra);

    checks = forAllSystems (
      pkgs:
        (prefixAttrs "packages-"
          (filterAttrs (_: x: elem pkgs.system x.meta.platforms) self.packages.${pkgs.system}))
        // (prefixAttrs "nixos-"
          (mapAttrs (_: x: x.config.system.build.toplevel)
            (filterAttrs (_: x: x.pkgs.system == pkgs.system) self.nixosConfigurations)))
    );
  };
}
