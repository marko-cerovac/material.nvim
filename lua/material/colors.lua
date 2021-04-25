--         ___           ___
--        /\  \         /\__\
--       |::\  \       /:/  /
--       |:|:\  \     /:/  /
--     __|:|\:\  \   /:/  /  ___
--    /::::|_\:\__\ /:/__/  /\__\
--    \:\~~\  \/__/ \:\  \ /:/  /
--     \:\  \        \:\  /:/  /
--      \:\  \        \:\/:/  /
--       \:\__\        \::/  /
--        \/__/         \/__/
--
-- Colorscheme name:        material.nvim
-- Description:             Colorscheme for NeoVim based on the material pallete
-- Author:                  Marko Cerovac <marko.cerovac16@gmail.com>
-- Website:                 https://github.com/marko-cerovac/material.nvim

local material = {
	-- Common colors

	white =			'#EEFFFF',
	gray =  		'#717CB4',
	black = 		'#000000',
	red =   		'#F07178',
	green = 		'#C3E88D',
	lime =			'#98EE64',
	yellow =		'#FFCB6B',
	blue =  		'#82AAFF',
	paleblue =		'#B0C9FF',
	cyan =  		'#89DDFF',
	purple =		'#C792EA',
	violet =		'#B66FFD',
	orange =		'#F78C6C',
	pink =  		'#FF9CAC',

	error =			'#FF5370',
	warning =		'#FFD353',
	link =			'#80CBC4',
	cursor =		'#FFCC00',

	none =			'NONE'
}

-- Style specific colors

if vim.g.material_style == 'darker' then
	-- Darker theme style

	material.bg =			'#212121'
	material.bg_alt =		'#1A1A1A'
	material.fg =			'#B0BEC5'
	material.text =			'#727272'
	material.comments =		'#616161'
	material.selection = 	'#404040'
	material.contrast =		'#1A1A1A'
	material.active =		'#323232'
	material.border =		'#292929'
	material.line_numbers =	'#424242'
	material.highlight =	'#3F3F3F'
	material.disabled =		'#474747'
	material.accent =		'#FF9800'

elseif vim.g.material_style == 'lighter' then
	-- Lighter theme style

	material.bg =			'#FAFAFA'
	material.bg_alt =		'#FFFFFF'
	material.fg =			'#546E7A'
	material.text =			'#94A7B0'
	material.comments =		'#AABFC9'
	material.selection = 	'#80CBC4'
	material.contrast =		'#EEEEEE'
	material.active =		'#E7E7E8'
	material.border =		'#D3E1E8'
	material.line_numbers =	'#CFD8DC'
	material.highlight =	'#E7E7E8'
	material.disabled =		'#D2D4D5'
	material.cursor =		'#272727'
	material.accent =		'#00BCD4'

	material.white =		'#FFFFFF'
	material.gray = 		'#717CB4'
	material.black =		'#000000'
	material.red =  		'#E53935'
	material.green =		'#91B859'
	material.yellow =		'#F6A434'
	material.blue = 		'#6182B8'
	material.paleblue =		'#8796B0'
	material.cyan = 		'#39ADB5'
	material.purple =		'#7C4DFF'
	material.orange =		'#F76D47'
	material.pink = 		'#FF5370'

elseif vim.g.material_style == 'palenight' then
	-- Palenight theme style

	material.bg =			'#292D3E'
	material.bg_alt =		'#1B1E2B'
	material.fg =			'#A6ACCD'
	material.text =			'#676E95'
	material.comments =		'#676E95'
	material.selection = 	'#717CB4'
	material.contrast =		'#202331'
	material.active =		'#414863'
	material.border =		'#2B2A3E'
	material.line_numbers =	'#3A3F58'
	material.highlight =	'#444267'
	material.disabled =		'#515772'
	material.accent =		'#AB47BC'

elseif vim.g.material_style == 'deep ocean' then
	-- Deep Ocean theme style

	material.bg =			'#0F111A'
	material.bg_alt =		'#090B10'
	material.fg =			'#8F93A2'
	material.text =			'#4B526D'
	material.comments =		'#717CB4'
	material.selection = 	'#1F2233'
	material.contrast =		'#090B10'
	material.active =		'#1A1C25'
	material.border =		'#0F111A'
	material.line_numbers =	'#3B3F51'
	material.highlight =	'#1F2233'
	material.disabled =		'#464B5D'
	material.accent =		'#84FFFF'

else vim.g.material_style = 'oceanic'
	-- Oceanic theme style

	material.bg =			'#263238'
	material.bg_alt =		'#192227'
	material.fg =			'#B0BEC5'
	material.text =			'#607D8B'
	material.comments =		'#546E7A'
	material.selection = 	'#546E7A'
	material.contrast =		'#1E272C'
	material.active =		'#314549'
	material.border =		'#2A373E'
	material.line_numbers =	'#37474F'
	material.highlight =	'#425B67'
	material.disabled =		'#415967'
	material.accent =		'#009688'

end

-- Optional colors
material.sidebar = vim.g.material_contrast and material.bg_alt or material.bg
material.float = vim.g.material_contrast and material.bg_alt or material.bg

return material
