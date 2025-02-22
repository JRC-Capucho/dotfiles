local wezterm = require("wezterm")

return {
	-- font = wezterm.font("Iosevka", { weight = "DemiBold", style = "Italic" }),
	-- font = wezterm.font("GeistMono Nerd Font", { weight = "Regular" }),
	font = wezterm.font("Fira Code Nerd Font"),
	font_size = 12.0,
	-- window_background_opacity = 0.2,
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
