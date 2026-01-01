local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true

config.enable_csi_u_key_encoding = true

-- Disable WezTerm's operations (new tab etc.), so the combo is passed through to tmux.
config.keys = config.keys or {}
table.insert(config.keys, { key = "T", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "Tab", mods = "CTRL", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "9", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "(", mods = "CTRL|SHIFT", action = wezterm.action.SendString("\x1b[57;6u") })
table.insert(config.keys, { key = "0", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = ")", mods = "CTRL|SHIFT", action = wezterm.action.SendString("\x1b[48;6u") })
table.insert(config.keys, { key = "W", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "Z", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "LeftArrow", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "RightArrow", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "UpArrow", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "DownArrow", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "PageUp", mods = "CTRL", action = wezterm.action.DisableDefaultAssignment })
table.insert(config.keys, { key = "PageDown", mods = "CTRL", action = wezterm.action.DisableDefaultAssignment })

return config
