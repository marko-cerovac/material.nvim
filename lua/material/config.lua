local Config = {}

local defaults = {

	contrast = {
		sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = false, -- Enable contrast for floating windows
		cursor_line = false, -- Enable darker background for the cursor line
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = false, -- Enable contrast background the sign column
		non_current_windows = false, -- Enable darker background for non-current windows
		popup_menu = false, -- Enable lighter background for the popup menu
	},

	italics = {
		comments = false, -- Italic comments
		strings = false, -- Italic strings
		keywords = false, -- Italic keywords
		functions = false, -- Italic functions
		variables = false -- Italic variables
	},

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

	lualine_style = 'default', -- Lualine style ( can be 'stealth' or 'default' )

	custom_colors = {}, -- TODO: define custom colors
	custom_highlights = {}, -- define custom highlights

	async_loading = true -- Load parts of the theme asyncronously for faster startup
}

Config.options = {}

Config.setup = function (options)
	Config.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

Config.setup()

return Config
