{ config, lib, pkgs, ... }: {

  environment.systemPackages = with pkgs; [ jellyseer ];

  services.jellyseer = {
    enable = true;
    openFirewall = true;
  };
}
