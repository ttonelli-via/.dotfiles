local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Dracula (Official)"

config.font = wezterm.font({
	family = "FiraCode Nerd Font",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0", "cv10" },
})
config.font_size = 15
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
