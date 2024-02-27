{ config, lib, pkgs, ... }: {

  environment.systemPackages = with pkgs; [ jellyseer ];

  services.jellyfin = {
    enable = true;
    openFirewall = true;
  };
}
