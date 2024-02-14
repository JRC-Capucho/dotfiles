-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Tokyo Night"

-- config.font = wezterm.font("CaskaydiaCove Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.font = wezterm.font("Liga SFMono Nerd Font", { weight = "Medium", stretch = "Normal", style = "Normal" }) -- /usr/share/fonts/LigaSFMonoNerdFont-Medium.otf, FontConfig

config.enable_tab_bar = false

-- Add key bindings for copy mode and paste
config.keys = {
    -- Assign Alt + C to enter copy mode
    {
        key = "c",
        mods = "ALT",
        action = wezterm.action({ CopyTo = "Clipboard" }),
    },
    {
        key = "v",
        mods = "ALT",
        action = wezterm.action({ PasteFrom = "PrimarySelection" }),
    },
    -- Assign Alt + V to paste
}

config.window_padding = {
    top = 0,
    bottom = 0,
    left = 0,
    right = 0,
}

-- and finally, return the configuration to wezterm
return config
