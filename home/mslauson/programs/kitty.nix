{
  programs.kitty = {
    enable = true;
    # shellIntegration = { enableZshIntegration = true; };
    font = {
      name = "JetBrainsMono";
      size = 11;
    };
    settings = {
      window_padding_width = 12;
      term = "xterm-256color";
      background_opacity = "0.97";
      hide_window_decorations = false;
      confirm_os_window_close = 0;
    };
    keybindings = {
      "ctrl+shift+c" = "copy_to_clipboard";
      "super+c" = "copy_to_clipboard";
      "ctrl+shift+v" = "paste_from_clipboard";
      "super+v" = "paste_from_clipboard";
    };
    theme = "Catppuccin-Mocha";
  };
}
