{
  programs = {
    hyprland = {
      enable = true;
      extraNvidiaPatches = true;
      xwayland = {
        hidpi = true;
        enable = true;
      };
    };
    waybar = {
      enable = true;
      package = pkgs.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      });
    };
    # thunar = {
    #   enable = true;
    #   plugins = with pkgs.xfce; [ thunar-archive-plugin thunar-volman ];
    # };
  };
}
