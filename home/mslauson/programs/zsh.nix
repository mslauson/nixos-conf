{ pkgs }: {
  programs.zsh = {
    enable = true;
    # enableAutosuggestions = true;
    # enableCompletion = true;
    # initExtra = "PATH=PATH:/home/mslauson/installs/custom-scripts";
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
      pniConf = "cd ~/projects/config/nixos-conf";
      pneConf = "cd ~/projects/config/neovim-conf";
      pLibs = "cd ~/projects/libs";
      pRest = "cd ~/projects/libs/rest";
      pUi = "cd ~/projects/ui";
      pBlog = "cd ~/projects/ui/blog";

      nvNix = "pniConf && nvim .";
      nvNvim = "pneConf && nvim .";

      yubiNanoC = "gpg-connect-agent 'scd 24009623' 'learn --force' /bye";
      yubiNanoA = "gpg-connect-agent 'scd 22748289' 'learn --force' /bye";
      yubiNfc = "gpg-connect-agent 'scd 24747238' 'learn --force' /bye";

      lolhello = "echo 'Hello Matt!' | lolcat";
    };
    history = {
      extended = true;
      save = 25000;
    };
    antidote = {
      enable = true;
      plugins = [

        "zsh-users/zsh-autosuggestions"
        "zsh-users/zsh-completions"
        "zsh-users/zsh-syntax-highlighting"
        "Aloxaf/fzf-tab"
        "KulkarniKaustubh/fzf-dir-navigator"
        "joshskidmore/zsh-fzf-history-search"
        "reegnz/jq-zsh-plugin"
        "akash329d/zsh-alias-finder"
      ];

    };
  };
}

