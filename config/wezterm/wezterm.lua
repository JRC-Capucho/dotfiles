local wezterm = require("wezterm")

local config = wezterm.config_builder()

local neofusion_theme = {
	foreground = "#e0d9c7",
	background = "#070f1c",
	cursor_bg = "#e0d9c7",
	cursor_border = "#e0d9c7",
	cursor_fg = "#070f1c",
	selection_bg = "#ea6847",
	selection_fg = "#e0d9c7",
	ansi = {
		"#070f1c", -- Black (Host)
		"#ea6847", -- Red (Syntax string)
		"#ea6847", -- Green (Command)
		"#5db2f8", -- Yellow (Command second)
		"#2f516c", -- Blue (Path)
		"#d943a8", -- Magenta (Syntax var)
		"#86dbf5", -- Cyan (Prompt)
		"#e0d9c7", -- White
	},
	brights = {
		"#2f516c", -- Bright Black
		"#d943a8", -- Bright Red (Command error)
		"#ea6847", -- Bright Green (Exec)
		"#86dbf5", -- Bright Yellow
		"#5db2f8", -- Bright Blue (Folder)
		"#d943a8", -- Bright Magenta
		"#ea6847", -- Bright Cyan
		"#e0d9c7", -- Bright White
	},
}

return {
	-- color_scheme = "neofusion_theme",
	colors = neofusion_theme,
	-- font = wezterm.font("Iosevka Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" }),
	font = wezterm.font("GeistMono Nerd Font", { weight = "Regular", line_height = 1.37 }),
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
-- GeistMonoNerdFont
