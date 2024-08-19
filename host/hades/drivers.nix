{ pkgs, config, ... } :

{
    boot.initrd.kernelModules = [ "amdgpu" ];
    environment.systemPackages = [ pkgs.rocmPackages.rocm-smi ];
}
