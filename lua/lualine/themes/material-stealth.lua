local colors = require('material.colors')

local material = {}

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

return material
