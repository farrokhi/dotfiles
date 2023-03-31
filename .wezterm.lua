-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- Color Scheme
config.color_scheme = 'Gruvbox dark, hard (base16)'
config.colors = {
   cursor_fg = '#F2DA47',
   cursor_bg = '#F2DA47',
   cursor_border = '#F2DA47',
}
config.cursor_thickness = "1pt"

-- Font
config.font = wezterm.font {
  family = 'Berkeley Mono',
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}

config.font_size = 16.0
config.line_height = 1.0

-- Window Style
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations="RESIZE | MACOS_FORCE_DISABLE_SHADOW"
config.enable_tab_bar = false
config.initial_rows = 35
config.initial_cols = 120
config.audible_bell="Disabled"
config.window_padding = {
  left = '0.5cell',
  right = '0.5cell',
  top = '0.5cell',
  bottom = '0.5cell',
}


-- and finally, return the configuration to wezterm
return config
