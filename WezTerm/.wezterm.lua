-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_cursor_style = "BlinkingBar"
config.font = wezterm.font("JetBrainsMonoNL Nerd Font")
config.font_size = 12.5
config.enable_tab_bar = true
config.automatically_reload_config = true
config.window_decorations = "RESIZE"
config.adjust_window_size_when_changing_font_size = false
config.harfbuzz_features = { "calt=0" }
config.max_fps = 120
config.animation_fps  = 120
config.front_end = "WebGpu"
config.prefer_egl = true
config.enable_kitty_graphics = true
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.75
config.macos_window_background_blur = 10
config.audible_bell = "Disabled"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
	left = 15,
	right = 15,
	top = 20,
	bottom = 5,
}

-- Key bindings delete word
config.keys = {
	{
		key = "LeftArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bb" }),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bf" }),
	},
}

config.color_scheme = 'Poimandres Storm'
config.colors = {
	-- background = "#12151B", -- lighter gray
   background = "#0D0D0D", -- darker gray
   -- background = "#000", -- pure black
   -- cursor_bg = "#9B96B5",
	-- cursor_fg = "#1a1a1e",
	-- cursor_border = "#9B96B5",
}
return config
