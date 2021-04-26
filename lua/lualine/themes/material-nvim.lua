local colors = require('material.colors')

local material = {}

material.normal = {
	a = {fg = colors.bg, bg = colors.accent, gui = 'bold'},
	b = {fg = colors.gray, bg = colors.active},
	c = {fg = colors.fg, bg = colors.selection},
}

material.insert = {
	a = {fg = colors.bg, bg = colors.green, gui = 'bold'},
	b = {fg = colors.gray, bg = colors.active},
}

material.visual = {
	a = {fg = colors.bg, bg = colors.purple, gui = 'bold'},
	b = {fg = colors.gray, bg = colors.active},
}

material.replace = {
	a = {fg = colors.bg, bg = colors.red, gui = 'bold'},
	b = {fg = colors.gray, bg = colors.active},
}

material.command = {
	a = {fg = colors.bg, bg = colors.yellow, gui = 'bold'},
	b = {fg = colors.gray, bg = colors.active},
}

material.inactive = {
  a = {fg = colors.disabled, bg = colors.bg, gui = 'bold'},
  b = {fg = colors.disabled, bg = colors.bg},
  c = {fg = colors.disabled, bg = colors.selection}
}

return material
