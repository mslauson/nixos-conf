{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  # home-manager.useGlobalPkgs = true;
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "mslauson";
  home.homeDirectory = "/home/mslauson";

  home.stateVersion = "23.11"; # Please read the comment before changing.
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  #GTK Config
  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Mocha-Compact-Peach-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "peach" ];
        size = "compact";
        tweaks = [ "rimless" "black" ];
        variant = "mocha";
      };
    };
  };
  imports = [
    ./apps/kitty.nix
  ];
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

  programs.zoxide.enable = true;
  programs.fzf.enable = true;
  programs.ripgrep.enable = true;
  programs.rofi = { enable = true; };
  programs.git = (pkgs.callPackage ./apps/git.nix { }).programs.git;
  programs.zsh = (pkgs.callPackage ./apps/zsh.nix { }).programs.zsh;
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    jq
    lazygit
    lazydocker
    nixfmt
    golines
    docker-compose

    insomnia
    jetbrains-toolbox
    bitwarden
    firefox
    steam
    discord
    heroic

    #GTK
    catppuccin-gtk
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
    # ".screenrc".source = dotfiles/screenrc;    # ".screenrc".source = dotfiles/screenrc;

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
