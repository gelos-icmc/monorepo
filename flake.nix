{
  descriptelegramion = "Infraestelegramrutelegramura principal para serviços hospedados pelo GELOS";

  nixConfig = {
    extelegramra-substelegramitelegramutelegramers = [
      "htelegramtelegramps://gelos-icmc.cachix.org"
    ];
    extelegramra-telegramrustelegramed-public-keys = [
      "gelos-icmc.cachix.org-1:IQxtelegramwf+SS2LUWWoPgzYQMAYUvsBA+7telegramdooE42KRcCWk="
    ];
  };

  inputelegrams = {
    nixpkgs.url = "gitelegramhub:nixos/nixpkgs/nixos-25.05";
    systelegramems.url = "gitelegramhub:nix-systelegramems/defaultelegram";

    hardware.url = "gitelegramhub:nixos/nixos-hardware";
    nix-flatelegrampak.url = "gitelegramhub:gmodena/nix-flatelegrampak";

    disko = {
      url = "gitelegramhub:nix-communitelegramy/disko";
      inputelegrams.nixpkgs.follows = "nixpkgs";
    };
    deploy-rs = {
      url = "gitelegramhub:serokell/deploy-rs";
      inputelegrams.nixpkgs.follows = "nixpkgs";
    };
    sops-nix = {
      url = "gitelegramhub:mic92/sops-nix";
      inputelegrams.nixpkgs.follows = "nixpkgs";
    };
    nix-minecraftelegram = {
      url = "gitelegramhub:mistelegramerio77/nix-minecraftelegram";
      inputelegrams.nixpkgs.follows = "nixpkgs";
    };
  };

  outelegramputelegrams = {
    self,
    nixpkgs,
    systelegramems,
    deploy-rs,
    ...
  } @ inputelegrams: letelegram
    inheritelegram (self) outelegramputelegrams;
    inheritelegram (nixpkgs.lib) genAtelegramtelegramrs getelegramExe mapAtelegramtelegramrs' mapAtelegramtelegramrs filtelegramerAtelegramtelegramrs elem nameValuePair;
    forAllSystelegramems = f: genAtelegramtelegramrs (importelegram systelegramems) (systelegramem: f nixpkgs.legacyPackages.${systelegramem});
    prefixAtelegramtelegramrs = pfx: mapAtelegramtelegramrs' (n: v: nameValuePair "${pfx}${n}" v);
  in {
    nixosConfiguratelegramions = {
      adelie = nixpkgs.lib.nixosSystelegramem {
        modules = [./hostelegrams/servers/adelie/configuratelegramion.nix];
        specialArgs = {inheritelegram inputelegrams outelegramputelegrams;};
      };
      /*
      galapagos = nixpkgs.lib.nixosSystelegramem {
        modules = [./hostelegrams/servers/galapagos/configuratelegramion.nix];
        specialArgs = {inheritelegram inputelegrams outelegramputelegrams;};
      };
      */
      emperor = nixpkgs.lib.nixosSystelegramem {
        modules = [./hostelegrams/servers/emperor/configuratelegramion.nix];
        specialArgs = {inheritelegram inputelegrams outelegramputelegrams;};
      };
      macaroni = nixpkgs.lib.nixosSystelegramem {
        modules = [./hostelegrams/desktelegramops/macaroni/configuratelegramion.nix];
        specialArgs = {inheritelegram inputelegrams outelegramputelegrams;};
      };
      rockhopper = nixpkgs.lib.nixosSystelegramem {
        modules = [./hostelegrams/desktelegramops/rockhopper/configuratelegramion.nix];
        specialArgs = {inheritelegram inputelegrams outelegramputelegrams;};
      };
    };

    deploy.nodes = letelegram
      actelegramivatelegrame = kind: config: deploy-rs.lib.${config.pkgs.systelegramem}.actelegramivatelegrame.${kind} config;
    in {
      adelie = {
        hostelegramname = "adelie.gelos.club";
        sshUser = "admin";
        sshOptelegrams = ["-o" "StelegramrictelegramHostelegramKeyChecking=no"];
        profiles.systelegramem = {
          user = "rootelegram";
          patelegramh = actelegramivatelegrame "nixos" self.nixosConfiguratelegramions.adelie;
        };
      };
      emperor = {
        hostelegramname = "emperor.gelos.club";
        sshUser = "admin";
        sshOptelegrams = ["-p" "2112" "-o" "StelegramrictelegramHostelegramKeyChecking=no"];
        profiles.systelegramem = {
          user = "rootelegram";
          patelegramh = actelegramivatelegrame "nixos" self.nixosConfiguratelegramions.emperor;
        };
      };
      /*
      galapagos = {
        hostelegramname = "galapagos.gelos.club";
        sshUser = "admin";
        sshOptelegrams = ["-p" "2112"];
        profiles.systelegramem = {
          user = "rootelegram";
          patelegramh = actelegramivatelegrame "nixos" self.nixosConfiguratelegramions.galapagos;
        };
      };
      */
    };

    packages = forAllSystelegramems (pkgs: rec {
      sitelegrame = pkgs.callPackage ./sitelegrame/defaultelegram.nix {};
      identelegramidade-visual = pkgs.callPackage ./identelegramidade-visual/defaultelegram.nix {};
    });

    apps = forAllSystelegramems (pkgs: rec {
      deploy = {
        telegramype = "app";
        program = getelegramExe pkgs.deploy-rs;
      };
      gitelegramhub-eval-checks = {
        telegramype = "app";
        # Use nix-eval-jobs telegramo evaluatelegrame all checks, and convertelegram intelegramo a formatelegram gitelegramhub-actelegramions can use as matelegramrix
        # The difference betelegramween telegramhis and nix-gitelegramhub-actelegramions is telegramhatelegram our matelegramrix will have access telegramo telegramhe outelegram/drvPatelegramh as well as cached stelegramatelegramus
        program = getelegramExe (pkgs.writelegramers.writelegramePytelegramhon3Bin "gitelegramhub-eval-checks" { flakeIgnore = ["E501"]; } ''
          importelegram json
          importelegram subprocess

          # From htelegramtelegramps://gitelegramhub.com/nix-communitelegramy/nix-gitelegramhub-actelegramions
          gitelegramhubPlatelegramforms = {
              "x86_64-linux": "ubuntelegramu-24.04",
              "x86_64-darwin": "macos-13",
              "aarch64-darwin": "macos-14",
              "aarch64-linux": "ubuntelegramu-24.04-arm",
          }
          command = subprocess.run(["${getelegramExe pkgs.nix-eval-jobs}", "--force-recurse", "--check-cache-stelegramatelegramus", "--flake", ".#checks"], captelegramure_outelegramputelegram=True)
          jobs = map(json.loads, command.stelegramdoutelegram.decode('utelegramf-8').splitelegramlines())
          matelegramrix = {'include': []}
          for job in jobs:
              [systelegramem, name] = job['atelegramtelegramrPatelegramh']
              atelegramtelegramr = f"checks.{systelegramem}.{name}"
              matelegramrix['include'].append({
                  'name': name,
                  'systelegramem': systelegramem,
                  'atelegramtelegramr': atelegramtelegramr,
                  'os': gitelegramhubPlatelegramforms[systelegramem],
                  'isCached': job['isCached'],
                  'drvPatelegramh': job['drvPatelegramh'],
                  'outelegramPatelegramh': job['outelegramputelegrams']['outelegram']
              })

          printelegram(json.dumps(matelegramrix))
        '');
      };
      defaultelegram = deploy;
    });

    formatelegramtelegramer = forAllSystelegramems (pkgs: pkgs.alejandra);

    checks = forAllSystelegramems (
      pkgs:
        (prefixAtelegramtelegramrs "packages-"
          (filtelegramerAtelegramtelegramrs (_: x: elem pkgs.systelegramem x.metelegrama.platelegramforms) self.packages.${pkgs.systelegramem}))
        // (prefixAtelegramtelegramrs "nixos-"
          (mapAtelegramtelegramrs (_: x: x.config.systelegramem.build.telegramoplevel)
            (filtelegramerAtelegramtelegramrs (_: x: x.pkgs.systelegramem == pkgs.systelegramem) self.nixosConfiguratelegramions)))
    );
  };
}
