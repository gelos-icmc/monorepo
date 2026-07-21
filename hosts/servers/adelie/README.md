# adelie na Oracle Cloud

No momento, `adelie` é uma VM x86-64 na OCI, usando o profile de OCI do nixpkgs.

## Deploy

Por ter apenas 1gb de RAM, nixos-anywhere não é viável.

Para fazer deploy, builde uma imagem QCOW:

```sh
nix build "$(nix eval --raw .#nixosConfigurations.adelie --apply 'nixos: (nixos.extendModules { modules = [ (nixos.pkgs.path + "/nixos/modules/virtualisation/oci-image.nix") ]; }).config.system.build.OCIImage.drvPath')"
```

Caso tenha quota de `custom-image`, uploade como imagem para a OCI e inicie uma instância usando ela como boot image.

Caso contrário (free tier), uploade direto no disco dela (só se vive uma vez) rodando:

```sh
nix shell nixpkgs#qemu -c qemu-img convert -f qcow2 -O raw result/*.qcow2 /tmp/adelie.raw
gzip -1 < /tmp/adelie.raw | ssh opc@IP_ADELIE 'sudo bash -o pipefail -c "swapoff -a; sync; echo 1 > /proc/sys/kernel/sysrq; echo u > /proc/sysrq-trigger; gzip -dc | dd of=/dev/sda bs=16M iflag=fullblock oflag=direct conv=fsync,notrunc"'
```

Depois é só dar um hard-reset, e sucesso. Futuros deploys podem ser feitos normalmente com deploy-rs/nixos-rebuild.
