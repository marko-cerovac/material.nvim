local Config = {}

local defaults = {

	contrast = true, -- Contrast for sidebars and floating windows
	borders = false, -- Split window borders

	italics = {
		comments = false, -- Italic comments
		strings = false, -- Italic strings
		keywords = false, -- Italic keywords
		functions = false, -- Italic functions
		variables = false -- Italic variables
	},

	text_contrast = {
		lighter = true, -- Higher contrast text for lighter style
		darker = false -- Higher contrast text for darker style
	},

	disable = {
		background = false, -- Disable setting the background color
		term_colors = false, -- Disable setting the terminal colors
		eob_lines = false -- Make end-of-buffer lines invisible
	},

	custom_colors = {}, -- TODO: define custom colors
	custom_highlights = {} -- TODO: define custom highlights
}

Config.options = {}

Config.setup = function (options)
	Config.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

return Config
