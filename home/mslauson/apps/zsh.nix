{ pkgs }: {
  programs.zsh = {
    enable = true;
    # enableAutosuggestions = true;
    # enableCompletion = true;
    history = {
      extended = true;
      save = 25000;
    };
    plugins = [
      {
        # will source zsh-autosuggestions.plugin.zsh
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          # rev = "v0.4.0";
          # sha256 = "0z6i9wjjklb4lvr7zjhbphibsyx51psv50gm07mbb0kj9058j6kc";
        };
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
