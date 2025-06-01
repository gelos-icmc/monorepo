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
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
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

    gelos-beamer-theme = {
      url = "github:gelos-icmc/beamer-theme";
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
    inherit (nixpkgs.lib) genAttrs getExe;
    forAllSystems = f: genAttrs (import systems) (system: f nixpkgs.legacyPackages.${system});
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
        profiles.system = {
          user = "root";
          path = activate "nixos" self.nixosConfigurations.adelie;
        };
        remoteBuild = true;
      };
      emperor = {
        hostname = "emperor.gelos.club";
        sshUser = "admin";
        sshOpts = ["-p" "2112"];
        profiles.system = {
          user = "root";
          path = activate "nixos" self.nixosConfigurations.emperor;
        };
        remoteBuild = true;
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
        remoteBuild = true;
      };
      */
    };

    packages = forAllSystems (pkgs: rec {
      site = pkgs.callPackage ./site/default.nix {inherit atas;};
      atas = pkgs.callPackage ./site/atas.nix {
        beamer-theme = inputs.gelos-beamer-theme.packages.${pkgs.system}.theme;
      };
      identidade-visual = pkgs.callPackage ./identidade-visual/default.nix {};
    });

    apps = forAllSystems (pkgs: rec {
      deploy = {
        type = "app";
        program = getExe pkgs.deploy-rs;
      };
      default = deploy;
    });

    formatter = forAllSystems (pkgs: pkgs.alejandra);
  };
}
