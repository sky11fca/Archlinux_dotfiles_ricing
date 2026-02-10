local LEFT_SIDE = ""
local RIGHT_SIDE = ""


-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 10
--config.color_scheme = 'AdventureTime'

config.enable_tab_bar = false
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = true

config.enable_wayland = false


config.default_prog = {'/usr/bin/nu'}

--config.window_background_image = '/home/mrbogdanovich/dotfiles/walls/creepy_fuck.jpg'
--config.window_background_image_hsb = {
--	brightness = 0.2

--}

--config.window_background_opacity = 0.8
--config.kde_window_background_blur = true

--config.macos_window_background_blur = 20


-- Finally, return the configuration to wezterm:
return config

