local wezterm = require("wezterm")

return {
	color_scheme = "Catppuccin Mocha",
	font = wezterm.font_with_fallback({
		"JetBrains Mono",
	}),
	font_size = 10.0,
	window_background_opacity = 0.9,
	enable_tab_bar = false,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
}
