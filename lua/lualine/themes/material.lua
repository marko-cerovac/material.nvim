local colors = require('material.colors')
local config = require('material.config').options

local material = {}

if config.lualine_style == 'stealth' then

	material.normal = {
		a = {fg = colors.accent, bg = colors.highlight},
		b = {fg = colors.title, bg = colors.bg_alt},
		c = {fg = colors.comments, bg = colors.bg},
	}

	material.insert = {
		a = {fg = colors.green, bg = colors.highlight},
		b = {fg = colors.title, bg = colors.bg_alt},
	}

	material.visual = {
		a = {fg = colors.purple, bg = colors.highlight},
		b = {fg = colors.title, bg = colors.bg_alt},
	}

	material.replace = {
		a = {fg = colors.red, bg = colors.highlight},
		b = {fg = colors.title, bg = colors.bg_alt},
	}

	material.command = {
		a = {fg = colors.yellow, bg = colors.highlight},
		b = {fg = colors.title, bg = colors.bg_alt},
	}

	material.inactive = {
	  a = {fg = colors.disabled, bg = colors.bg},
	  b = {fg = colors.disabled, bg = colors.bg},
	  c = {fg = colors.disabled, bg = colors.bg}
	}

else

	material.normal = {
		a = {fg = colors.bg, bg = colors.accent, gui = 'bold'},
		b = {fg = colors.title, bg = colors.bg_alt},
		c = {fg = colors.fg, bg = colors.selection},
	}

	material.insert = {
		a = {fg = colors.bg, bg = colors.green, gui = 'bold'},
		b = {fg = colors.title, bg = colors.bg_alt},
	}

	material.visual = {
		a = {fg = colors.bg, bg = colors.purple, gui = 'bold'},
		b = {fg = colors.title, bg = colors.bg_alt},
	}

	material.replace = {
		a = {fg = colors.bg, bg = colors.red, gui = 'bold'},
		b = {fg = colors.title, bg = colors.bg_alt},
	}

	material.command = {
		a = {fg = colors.bg, bg = colors.yellow, gui = 'bold'},
		b = {fg = colors.title, bg = colors.bg_alt},
	}

	material.inactive = {
	  a = {fg = colors.disabled, bg = colors.bg},
	  b = {fg = colors.disabled, bg = colors.bg},
	  c = {fg = colors.disabled, bg = colors.bg}
	}

end

return material
