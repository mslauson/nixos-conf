{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "mslauson";
  home.homeDirectory = "/home/mslauson";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.
  programs.lazygit = {
    enable = true;
    settings = {
      gui.theme = {
        lightTheme = false;
        activeBorderColor = [ "#a6e3a1" "bold" ];
        inactiveBorderColor = [ "#cdd6f4" ];
        optionsTextColor = [ "#89b4fa" ];
        selectedLineBgColor = [ "#313244" ];
        selectedRangeBgColor = [ "#313244" ];
        cherryPickedCommitBgColor = [ "#94e2d5" ];
        cherryPickedCommitFgColor = [ "#89b4fa" ];
        unstagedChangesColor = [ "red" ];
      };
    };
  };

  programs.kitty = {
    enable = true;

    font = { name = "JetBrainsMono"; size = 11; };
    settings = {
      window_padding_width = 12;
      term = "xterm-256color";
      background_opacity = 0.97;
      hide_window_decorations = 1;
      confirm_os_window_close = 0;
    };
    # keybindings = {
    #   "ctrl+left" = "neighboring_window left";
    #   "ctrl+up" = "neighboring_window top";
    #   "ctrl+right" = "neighboring_window right";
    #   "ctrl+down" = "neighboring_window down";
    #
    #   "shift+left" = "resize_window narrower";
    #   "shift+right" = "resize_window wider";
    #   "shift+up" = "resize_window taller 3";
    #   "shift+down" = "resize_window shorter 3";
    # };
    theme = "Catppuccin-Mocha";
  };
  programs.zoxide.enable = true;
  programs.fzf.enable = true;
  programs.bat.enable = true;
  programs.git = (pkgs.callPackage ./apps/git.nix { }).programs.git;
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs;[
    jq
    lazygit
    lazydocker
    # jetbrains-toolbox
    docker-compose
    insomnia
    bitwarden

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/mslauson/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
  };

}
