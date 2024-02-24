{ pkgs }: {
  programs.zsh = {
    enable = true;
    # enableAutosuggestions = true;
    # enableCompletion = true;
    shellAliases = {

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
    };
    history = {
      extended = true;
      save = 25000;
    };
    # plugins = [
    #   {
    #     name = "zsh-autosuggestions";
    #     src = pkgs.zsh-autosuggestions;
    #   }
    #   {
    #     name = "zsh-completions";
    #     src = pkgs.zsh-completions;
    #   }
    #   {
    #     name = "zsh-syntax-highlighting";
    #     src = pkgs.zsh-syntax-highlighting;
    #   }
    #   {
    #     name = "zsh-fzf-tab";
    #     src = pkgs.zsh-fzf-tab;
    #   }
    # ];
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
