#### Konsole-like bindings and settings

### Setup protocol
# We assume that the terminal talks in CSI-u.
# Enable in WezTerm with `enable_csi_u_key_encoding = true`
tmux set -g xterm-keys on   # Allow Ctrl+Shift combos etc., if terminal sends them
tmux set -g extended-keys on
tmux set -as terminal-features '*:extkeys'

### Konsole tab = tmux window

## New tab (Ctrl+Shift+T)
tmux bind -n C-T new-window -c "#{pane_current_path}"

## Next / Previous tab
tmux bind -n C-S-Tab previous-window
tmux bind -n C-Tab next-window
tmux bind -n C-PPage previous-window   # Ctrl+PgUp
tmux bind -n C-NPage next-window       # Ctrl+PgDn


### Konsole split terminal = tmux pane

## Splits. Horizontal: Ctrl+Shift+(, Vertical: Ctrl+Shift+)
tmux bind -n C-S-9 split-window -h -c "#{pane_current_path}"
tmux bind -n C-S-0 split-window -v -c "#{pane_current_path}"

## Switch panes with Ctrl+Shift+Arrows
tmux bind -n C-S-Left select-pane -L
tmux bind -n C-S-Right select-pane -R
tmux bind -n C-S-Up select-pane -U
tmux bind -n C-S-Down select-pane -D

## Close current pane (Ctrl+Shift+W)
tmux bind -n C-W kill-pane

## Zoom current pane (Ctrl+Shift+Z)
tmux bind -n C-Z resize-pane -Z


### Other Konsole-like UI/UX

## Close window when its last pane exits
tmux set -g detach-on-destroy off

## Titles
tmux set -g set-titles on
tmux set -g set-titles-string "#{b:pane_current_path} - #{pane_current_command}"
tmux setw -g automatic-rename on
tmux setw -g automatic-rename-format '#{b:pane_current_command}'

## Mouse
# click to focus, drag to resize, wheel scroll, etc.
tmux set -g mouse on
# mouse-friendly copy mode. drag to select & copy to clipboard
tmux setw -g mode-keys vi


## Status bar at the top
tmux set -g status-position top
tmux set -g status on

## Search
tmux bind -n C-F 'copy-mode ; send-keys ?'

