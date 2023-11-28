local wezterm = require 'wezterm'
local config = {}
config.font = wezterm.font 'Iosevka NF'
-- config.font = wezterm.font 'Hack Nerd Font'
-- config.font = wezterm.font 'RobotoMono Nerd Font Mono'
config.window_background_opacity = 0.8
config.hide_tab_bar_if_only_one_tab = true
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.font_size = 18
config.color_scheme = "Catppuccin Mocha"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
