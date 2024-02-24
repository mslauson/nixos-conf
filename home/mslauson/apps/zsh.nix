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
    zplug = {
      enable = true;
      plugins = [
        { name="zsh-users/zsh-autosuggestions"; }
        { name="zsh-users/zsh-completions"; }
        { name="zsh-users/zsh-syntax-highlighting"; }
        { name="Aloxaf/fzf-tab"; }
        { name="akash329d/zsh-alias-finder"; }
        { name="KulkarniKaustubh/fzf-dir-navigator"; }
        { name="joshskidmore/zsh-fzf-history-search"; }
        { name="reegnz/jq-zsh-plugin"; }

        { name="ChrisPenner/session-sauce"; }
        { name="nix-community/nix-zsh-completions"; }
      ];

    };
  };
}
