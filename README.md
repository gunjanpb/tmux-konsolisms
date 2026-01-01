# tmux-konsolisms

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A tmux plugin to make it behave like KDE Konsole. This plugin is opinionated and sets keybindings and options to closely match Konsole's default behavior.

## Keybindings

| Keybinding             | Action                               |
| ---------------------- | ------------------------------------ |
| `Ctrl+Shift+T`         | Create a new window (tab)            |
| `Ctrl+Tab`             | Go to the next window (tab)          |
| `Ctrl+Shift+Tab`       | Go to the previous window (tab)      |
| `Ctrl+PageDown`        | Go to the next window (tab)          |
| `Ctrl+PageUp`          | Go to the previous window (tab)      |
| `Ctrl+Shift+9`         | Split pane horizontally              |
| `Ctrl+Shift+0`         | Split pane vertically                |
| `Ctrl+Shift` + `Arrows`| Navigate between panes               |
| `Ctrl+Shift+W`         | Close the current pane               |
| `Ctrl+Shift+Z`         | Zoom(maximize) the current pane      |
| `Ctrl+Shift+F`         | Search buffer                        |

It also changes status bar position, titles, etc., and enables mouse, to align with Konsole experience.

## Prerequisites

As of writing, this plugin utilizes the [CSI-u](https://www.leonerd.org.uk/hacks/fixterms/) keyboard protocol, and hence needs a terminal emulator which implements it. Implementing other protocols is a future goal.

It is tested to work on [WezTerm](https://wezterm.org/). The corresponding [.wezterm.lua](/.wezterm.lua) is provided and is necessary to work.

Note: This is NOT a plugin for Konsole and is not meant to be used with Konsole.


## Installation

Easiest way is with [TPM](https://github.com/tmux-plugins/tpm)

1.  Add to your `~/.tmux.conf` file:
    ```tmux
    set -g @plugin 'gunjanpb/tmux-konsolisms'
    ```
2.  Press `prefix` (Ctrl+B by default) followed by `I`  to fetch the plugin.
