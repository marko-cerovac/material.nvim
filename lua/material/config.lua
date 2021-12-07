local Config = {}

local defaults = {

	contrast = {
		sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = false, -- Enable contrast for floating windows
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = false, -- Enable contrast background the sign column
		cursor_line = false, -- Enable darker background for the cursor line
	},

	italics = {
		comments = false, -- Italic comments
		strings = false, -- Italic strings
		keywords = false, -- Italic keywords
		functions = false, -- Italic functions
		variables = false -- Italic variables
	},

	popup_menu = 'dark', -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )

	contrast_filetypes = {}, -- Select which windows get the contrast background

	disable = {
		borders = false, -- Disable window split borders
		background = false, -- Disable setting the background color
		term_colors = false, -- Disable setting the terminal colors
		eob_lines = false -- Make end-of-buffer lines invisible
	},

	high_visibility = {
		lighter = false, -- Higher contrast text for lighter style
		darker = false -- Higher contrast text for darker style
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
