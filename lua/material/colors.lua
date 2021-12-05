-- This file is used to define
-- the basic colors of the theme
-- and the style specific colors

local colors = {
	-- Common colors

	white =					'#EEFFFF',
	gray =					'#717CB4',
	black = 				'#000000',
	red =   				'#F07178',
	green = 				'#C3E88D',
	yellow =				'#FFCB6B',
	blue =  				'#82AAFF',
	paleblue =				'#B0C9FF',
	cyan =  				'#89DDFF',
	purple =				'#C792EA',
	orange =				'#F78C6C',
	pink =  				'#FF9CAC',

	-- Dark colors
	darkred =				'#dc6068',
	darkgreen =				'#abcf76',
	darkyellow =			'#e6b455',
	darkblue =				'#6e98eb',
	darkcyan =				'#71c6e7',
	darkpurple =			'#b480d6',
	darkorange =			'#e2795b',

	error =					'#FF5370',
	link =					'#80CBC4',
	cursor =				'#FFCC00',

	none =      			'NONE'
}

-- Style specific colors

if vim.g.material_style == 'darker' then
	-- Darker theme style

    colors.bg =				'#212121'
    colors.bg_alt =			'#1A1A1A'
    colors.fg =				'#B0BEC5'
    colors.text =			'#727272'
    colors.selection = 		'#404040'
    colors.contrast =		'#1A1A1A'
    colors.active =			'#323232'
    colors.border =			'#292929'
    colors.highlight =		'#3F3F3F'
    colors.disabled =		'#474747'
    colors.accent =			'#FF9800'


elseif vim.g.material_style == 'lighter' then


	colors.bg =				'#FAFAFA'
	colors.bg_alt =			'#FFFFFF'
	colors.contrast =		'#EEEEEE'
	colors.active =			'#E7E7E8'
	colors.border =			'#D3E1E8'
	colors.highlight =		'#E7E7E8'
	colors.disabled =		'#D2D4D5'
	colors.cursor =			'#272727'

	colors.white =			'#FFFFFF'
	colors.gray = 			'#717CB4'


elseif vim.g.material_style == 'palenight' then
	-- Palenight theme style

	colors.bg =				'#292D3E'
	colors.bg_alt =			'#1B1E2B'
	colors.fg =				'#A6ACCD'
	colors.text =			'#717CB4'
	colors.comments =		'#676E95'
	colors.selection =		'#444267'
	colors.contrast =		'#202331'
	colors.active =			'#414863'
	colors.border =			'#676E95'
	colors.line_numbers =	'#3A3F58'
	colors.highlight =		'#444267'
	colors.disabled =		'#515772'
	colors.accent =			'#AB47BC'

elseif vim.g.material_style == 'deep ocean' then
	-- Deep Ocean theme style

	colors.bg =				'#0F111A'
	colors.bg_alt =			'#090B10'
	colors.fg =				'#A6ACCD'
	colors.text =			'#717CB4'
	colors.comments =		'#464B5D'
	colors.selection = 		'#1F2233'
	colors.contrast =		'#090B10'
	colors.active =			'#1A1C25'
	colors.border =			'#1F2233'
	colors.line_numbers =	'#3B3F51'
	colors.highlight =		'#1F2233'
	colors.disabled =		'#464B5D'
	colors.accent =			'#84FFFF'

else vim.g.material_style = 'oceanic'
	-- Oceanic theme style

	colors.bg =				'#263238'
	colors.bg_alt =			'#192227'
	colors.fg =				'#B0BEC5'
	colors.text =			'#607D8B'
	colors.comments =		'#546E7A'
	colors.selection =		'#464B5D'
	colors.contrast =		'#1E272C'
	colors.active =			'#314549'
	colors.border =			'#2A373E'
	colors.line_numbers =	'#37474F'
	colors.highlight =		'#425B67'
	colors.disabled =		'#415967'
	colors.accent =			'#009688'

end

-- Extend the colors table with the conditional colors
colors = vim.tbl_deep_extend("force", colors, require("material.conditionals"))

return colors
