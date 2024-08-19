{ pkgs, config, ... } :

{
    boot.initrd.kernelModules = [ "amdgpu" ];
}
