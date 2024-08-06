local wezterm = require("wezterm")

return {
	color_scheme = "Catppuccin Mocha",
	-- color_scheme = "Poimandres",
	font = wezterm.font("Geist Mono", { weight = "Regular", stretch = "Normal", style = "Normal" }),
	font_size = 12.0,
	window_background_opacity = 0.9,
	enable_tab_bar = false,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = "0.0cell",
	},
	underline_thickness = 1,
	underline_position = -2,
	max_fps = 60,
	animation_fps = 30,
}
