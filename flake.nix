{
  description = "Infraestrutura principal para serviços hospedados pelo GELOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
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

    gelos-beamer-theme = {
      url = "github:gelos-icmc/beamer-theme";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    inherit (self) outputs;
    systems = ["x86_64-linux" "aarch64-linux"];
    forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f { inherit system; pkgs = nixpkgs.legacyPackages.${system}; });
  in rec {
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
      activate = kind: config: inputs.deploy-rs.lib.${config.pkgs.system}.activate.${kind} config;
    in {
      adelie = {
        hostname = "adelie.gelos.club";
        sshUser = "admin";
        profiles.system = {
          user = "root";
          path = activate "nixos" nixosConfigurations.adelie;
        };
        remoteBuild = true;
      };
      emperor = {
        hostname = "emperor.gelos.club";
        sshUser = "admin";
        sshOpts = ["-p" "2112"];
        profiles.system = {
          user = "root";
          path = activate "nixos" nixosConfigurations.emperor;
        };
        remoteBuild = true;
      };
      /* Temporariamente desativados
      galapagos = {
        hostname = "galapagos.gelos.club";
        sshUser = "admin";
        sshOpts = ["-p" "2112"];
        profiles.system = {
          user = "root";
          path = activate "nixos" nixosConfigurations.galapagos;
        };
        remoteBuild = true;
      };
      */
    };

    packages = forAllSystems ({pkgs, system, ...}: rec {
      site = pkgs.callPackage ./site/default.nix { inherit atas; };
      atas = pkgs.callPackage ./site/atas.nix {
        beamer-theme = inputs.gelos-beamer-theme.packages.${system}.theme;
      };
      identidade-visual = pkgs.callPackage ./identidade-visual/default.nix { };
    });

    apps = forAllSystems ({system, ...}: rec {
      deploy = {
        type = "app";
        program = "${nixpkgs.legacyPackages.${system}.deploy-rs}/bin/deploy";
      };
      default = deploy;
    });

    formatter = forAllSystems ({system, ...}: nixpkgs.legacyPackages.${system}.alejandra);
  };
}
