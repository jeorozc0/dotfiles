local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Rosé Pine colors
config.colors = {
	foreground = "#e0def4",
	background = "#191724",
	cursor_bg = "#e0def4",
	cursor_border = "#e0def4",
	cursor_fg = "#191724",
	selection_bg = "#403d52",
	selection_fg = "#e0def4",
	ansi = {
		"#26233a", -- black
		"#eb6f92", -- red
		"#9ccfd8", -- green
		"#f6c177", -- yellow
		"#31748f", -- blue
		"#c4a7e7", -- magenta
		"#ebbcba", -- cyan
		"#e0def4", -- white
	},
	brights = {
		"#6e6a86", -- bright black
		"#eb6f92", -- bright red
		"#9ccfd8", -- bright green
		"#f6c177", -- bright yellow
		"#31748f", -- bright blue
		"#c4a7e7", -- bright magenta
		"#ebbcba", -- bright cyan
		"#e0def4", -- bright white
	},
}

config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 19
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
-- Frosted glass effect
config.window_background_opacity = 0.85
config.macos_window_background_blur = 30

return config
