#### Konsole-like bindings and settings for tmux

### Setup protocol
# We assume that the terminal talks in CSI-u.
# Enable in WezTerm with `enable_csi_u_key_encoding = true`
set -g xterm-keys on   # Allow Ctrl+Shift combos etc., if terminal sends them
set -g extended-keys on
set -as terminal-features '*:extkeys'

### Konsole tab = tmux window

## New tab (Ctrl+Shift+T)
bind -n C-T new-window -c "#{pane_current_path}"

## Next / Previous tab
bind -n C-S-Tab previous-window
bind -n C-Tab next-window
bind -n C-PPage previous-window   # Ctrl+PgUp
bind -n C-NPage next-window       # Ctrl+PgDn


### Konsole split terminal = tmux pane

## Splits. Horizontal: Ctrl+Shift+(, Vertical: Ctrl+Shift+)
bind -n C-S-9 split-window -h -c "#{pane_current_path}"
bind -n C-S-0 split-window -v -c "#{pane_current_path}"

## Switch panes with Ctrl+Shift+Arrows
bind -n C-S-Left select-pane -L
bind -n C-S-Right select-pane -R
bind -n C-S-Up select-pane -U
bind -n C-S-Down select-pane -D

## Close current pane (Ctrl+Shift+W)
bind -n C-W kill-pane

## Zoom current pane (Ctrl+Shift+Z)
bind -n C-Z resize-pane -Z


### Other Konsole-like UI/UX

## Close window when its last pane exits
set -g detach-on-destroy off

## Titles
set -g set-titles on
set -g set-titles-string "#{b:pane_current_path} - #{pane_current_command}"
setw -g automatic-rename on
setw -g automatic-rename-format '#{b:pane_current_command}'

## Mouse
# click to focus, drag to resize, wheel scroll, etc.
set -g mouse on
# mouse-friendly copy mode. drag to select & copy to clipboard
setw -g mode-keys vi


## Status bar at the top
set -g status-position top
set -g status on

## Search
bind -n C-F 'copy-mode ; send-keys ?'

