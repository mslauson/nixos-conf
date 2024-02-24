{}: {
  programs.zsh = {
    enable = true;
    # enableAutosuggestions = true;
    # enableCompletion = true;
    history =
      {
        extended = true;
        save = 25000;
      };
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

    oh-my-zsh = {
      enable = true;
      plugins = [
        "zsh-users/zsh-autosuggestions"
        "zsh-users/zsh-completions"
        "zsh-users/zsh-syntax-highlighting"
        "Aloxaf/fzf-tab"
        "akash329d/zsh-alias-finder"
        "KulkarniKaustubh/fzf-dir-navigator"
        "joshskidmore/zsh-fzf-history-search"
        "reegnz/jq-zsh-plugin"

        "ChrisPenner/session-sauce"
        "nix-community/nix-zsh-completions"
      ];

    };
  };
}
