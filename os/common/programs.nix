{ config, pkgs, ... }: {
  programs = {
    hyprland = {
      enable = true;
      enableNvidiaPatches = true;
      xwayland = {
        # hidpi = true;
        enable = true;
      };
    };
    waybar = {
      enable = true;
      package = pkgs.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      });
    };
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
    };
    # thunar = {
    #   enable = true;
    #   plugins = with pkgs.xfce; [ thunar-archive-plugin thunar-volman ];
    # };
  };
}
