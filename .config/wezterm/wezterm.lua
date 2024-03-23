local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Dracula (Official)"

config.font = wezterm.font("CommitMono")
config.font_size = 16
config.line_height = 1.2

config.enable_tab_bar = false

config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.window_padding = {
	left = "0.5cell",
	right = "0.5cell",
	top = "0.5cell",
	bottom = 0,
}

return config
