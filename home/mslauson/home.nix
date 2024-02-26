{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.username = "mslauson";
  home.homeDirectory = "/home/mslauson";
  manual.html.enable = true;

  home.stateVersion = "23.11";
  nixpkgs = { config = { allowUnfree = true; }; };
  #GTK Config
  imports = [
    ./programs/kitty.nix
    ./programs/fzf.nix
    # ./programs/rofi.nix
    ./programs/lazygit.nix
    ./programs/thefuck.nix
    ./services/gpg-agent.nix
    ./programs/starship.nix
    # ./programs/hyprland.nix
    ./ui/gtk.nix
  ];

  programs.zoxide.enable = true;
  programs.ripgrep.enable = true;

  programs.git = (pkgs.callPackage ./programs/git.nix { }).programs.git;
  programs.zsh = (pkgs.callPackage ./programs/zsh.nix { }).programs.zsh;
  programs.tmux = (pkgs.callPackage ./programs/tmux.nix { }).programs.tmux;
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    curl
    killall
    lshw
    gum
    xclip
    lolcat
    jq
    lazygit
    lazydocker
    docker-compose
    yubikey-manager

    #Wayland
    # wlogout
    swayidle
    sway-audio-idle-inhibit

    ##Hyprland

    neovim
    jetbrains-toolbox
    insomnia

    # Langs
    nodejs_21
    go
    jdk21
    # cargo
    rustup
    gcc

    #gnome software
    gnomecast
    gnome.gnome-software
    # gnome-extensions
    gnome-extension-manager
    gnomeExtensions.dash-to-dock

    nixfmt
    golines
    rnix-lsp

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
