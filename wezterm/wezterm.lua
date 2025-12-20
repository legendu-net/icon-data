-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.initial_cols = 120
config.initial_rows = 28
config.font_size = 11
config.color_scheme = "Tokyo Night"

local dimmer = { brightness = 0.1 }
config.background = {
	-- This is the deepest/back-most layer. It will be rendered first
	{
		source = {
			--File = "/home/dclong/Downloads/wallpaper/outer_space.jpg",
			File = "/home/dclong/Downloads/wallpaper/robot_castle.jpg",
		},
		-- The texture tiles vertically but not horizontally.
		-- When we repeat it, mirror it so that it appears "more seamless".
		-- An alternative to this is to set `width = "100%"` and have
		-- it stretch across the display
		repeat_x = "Mirror",
		hsb = dimmer,
		-- When the viewport scrolls, move this layer 10% of the number of
		-- pixels moved by the main viewport. This makes it appear to be
		-- further behind the text.
		attachment = { Parallax = 0.1 },
	},
}
--config.window_background_opacity = 0.3

return config
