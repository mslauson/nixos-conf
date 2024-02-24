{ pkgs }: {
  programs.tmux = {
    enable = true;
    newSession = true;
    mouse = true;
    plugins = with pkgs;[
      { plugin = tmuxPlugins.catppuccin; extraConfig = "set -g @catppuccin_window_tabs_enabled 'on' @catppuccin_date_time '%Y-%m-%d %H:%M'"; }
      tmuxPlugins.tmux-fzf
      { plugin = tmuxPlugins.resurrect; extraConfig = "set -g @resurrect-strategy-nvim 'session'"; }
      { plugin = tmuxPlugins.continuum; extraConfig = ''      set -g @continuum-restore 'on'      set -g @continuum-save-interval '60' # minutes    ''; }

      { plugin = tmuxPlugins.fzf-tmux-url; extraConfig = "set -g @resurrect-strategy-nvim 'session'"; }
      { plugin = tmuxPlugins.fzf-tmux-url; extraConfig = "set -g @fzf-url-bind"; }
      tmuxPlugins.vim-tmux-navigator
    ];
    extraConfig = ''
      set -g default-terminal "xterm-256color"
      set -ga terminal-overrides ",*256col*:Tc"
      set -ga terminal-overrides '*:Ss=\E[%p1%d q:Se=\E[ q'
      set-environment -g COLORTERM "truecolor"

      # Mouse works as expected
      # easy-to-remember split pane commands

      set-option -g status-position top
      set -g history-limit 50000
      set -g bell-action any
      setw -g xterm-keys on
      set -g set-titles on

      # Set prefix key to Ctrl-a
      unbind-key C-b
      set-option -g prefix M-a

      # send the prefix to client inside window
      bind-key M-a send-prefix


      # toggle last window like screen
      bind-key C-a last-window

      bind-key "~" split-window "exec btop"
      bind-key "'" choose-window
      bind-key "\"" choose-session
      bind-key a command-prompt "rename-session %%"
      bind-key -r C-j swap-pane -D
      bind-key -r C-k swap-pane -U
      bind-key -r N previous-window


      bind-key -r M-. new-window -c "#{window_current_path}"
      bind-key -r M-, new-session-c "#{pane_current_path}"
      bind | split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
      bind c new-window -c "#{pane_current_path}"
      bind-key -r C-m move-window

      # kill current pane/window
      bind-key q confirm-before kill-pane
      bind-key Q confirm-before kill-window
      bind-key X confirm-before kill-session
      bind-key p choose-buffer
      # delete the most recently copied buffer of text (default key was '-')
      bind-key x delete-buffer
      # title (default key in tmux is ',')
      bind-key A command-prompt "rename-window %%"
      # displays
      bind-key * list-clients
      # toggle statusbar
      bind-key b set status

    '';
  };
}
