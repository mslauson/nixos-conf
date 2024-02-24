{}: {
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    history =
      {
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
