{ config, lib, pkgs, ... }: {

  environment.systemPackages = with pkgs; [ jellyfin ];

  services.jellyfin = {
    enable = true;
    openFirewall = true;
    group = "nas-media";
  };
}
