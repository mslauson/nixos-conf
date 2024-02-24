{ pkgs }: {
  programs.zsh = {
    enable = true;
    # enableAutosuggestions = true;
    # enableCompletion = true;
    shellAliases = {
      rsrc = "source ~/.zshrc";

      tma = "tmux attach -t";
      tmaw = "tmux attach -t work";
      tmac = "tmux attach -t conf";
      tman = "tmux attach -t notes";
      tmar = "tmux attach -t rest";

      nrs = "sudo nixos-rebuild switch";
      hms = "home-manager switch";
      hmsz = "home-manager switch && source ~/.zshrc";
      hmsb = "home-manager switch -b backup";

      pApi = "cd ~/projects/api";
      pApiN = "cd ~/projects/api/ndt";
      pApiBl = "cd ~/projects/api/blog";
      pApiBu = "cd ~/projects/api/budget";
      pConf = "cd ~/projects/config";
      pLibs = "cd ~/projects/libs";
      pRest = "cd ~/projects/libs/rest";
      pUi = "cd ~/projects/ui";
      pBlog = "cd ~/projects/ui/blog";

      yubiNanoC = "gpg-connect-agent 'scd 24009623' 'learn --force' /bye";
      yubiNanoA = "gpg-connect-agent 'scd 22748289' 'learn --force' /bye";
      yubiNfc = "gpg-connect-agent 'scd 24747238' 'learn --force' /bye";

      lolhello = "echo 'Hello Matt!' | lolcat";
    };
    history = {
      extended = true;
      save = 25000;
    };
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.zsh-autosuggestions;
      }
      {
        name = "zsh-completions";
        src = pkgs.zsh-completions;
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.zsh-syntax-highlighting;
      }
      {
        name = "zsh-fzf-tab";
        src = pkgs.zsh-fzf-tab;
      }
    ];
    # zplug = {
    #   enable = true;
    #   plugins = [
    #     { name="zsh-users/zsh-autosuggestions"; }
    #     { name="zsh-users/zsh-completions"; }
    #     { name="zsh-users/zsh-syntax-highlighting"; }
    #     { name="Aloxaf/fzf-tab"; }
    #     { name="akash329d/zsh-alias-finder"; }
    #     { name="KulkarniKaustubh/fzf-dir-navigator"; }
    #     { name="joshskidmore/zsh-fzf-history-search"; }
    #     { name="reegnz/jq-zsh-plugin"; }
    #
    #     { name="ChrisPenner/session-sauce"; }
    #     { name="nix-community/nix-zsh-completions"; }
    #   ];
    #
    # };

  };
}
