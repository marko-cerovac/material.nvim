local Config = {}

local defaults = {
	contrast = true,
	borders = false,
	italics = {
		comments = false,
		strings = false,
		keywords = false,
		functions = false,
		variables = false
	},
	text_contrast = {
		lighter = true,
		darker = false
	},
	disable = {
		background = false,
		term_colors = false,
		eob_lines = false
	},
	custom_colors = {},
	custom_highlights = {}
}

Config.options = {}

Config.setup = function (options)
	Config.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

return Config
