local Config = {}

local defaults = {

	contrast = true, -- Enable contrast
	borders = false, -- Split window borders
	popup_menu = 'dark', -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )

	italics = {
		comments = false, -- Italic comments
		strings = false, -- Italic strings
		keywords = false, -- Italic keywords
		functions = false, -- Italic functions
		variables = false -- Italic variables
	},

	contrast_windows = { -- Select which windows get the contrast background
		"terminal", -- Darker terminal
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},

	text_contrast = {
		lighter = false, -- Higher contrast text for lighter style
		darker = false -- Higher contrast text for darker style
	},

	disable = {
		background = false, -- Disable setting the background color
		term_colors = false, -- Disable setting the terminal colors
		eob_lines = false -- Make end-of-buffer lines invisible
	},

	-- custom_colors = {}, -- TODO: define custom colors
	custom_highlights = {} -- define custom highlights
}

Config.options = {}

Config.setup = function (options)
	Config.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

Config.setup()

return Config
