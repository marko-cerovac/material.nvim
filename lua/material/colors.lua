local config = require('material.config').options

local material = {
	-- Common colors

	white    =		'#EEFFFF',
	gray     =      '#717CB4',
	black    = 		'#000000',
	red      =   	'#F07178',
	green    = 		'#C3E88D',
	yellow   =		'#FFCB6B',
	blue     =  	'#82AAFF',
	paleblue =		'#B0C9FF',
	cyan     =  	'#89DDFF',
	purple   =		'#C792EA',
	orange   =		'#F78C6C',
	pink     =  	'#FF9CAC',

	-- Dark colors
	darkred =		'#dc6068',
	darkgreen =		'#abcf76',
	darkyellow =	'#e6b455',
	darkblue =		'#6e98eb',
	darkcyan =		'#71c6e7',
	darkpurple =	'#b480d6',
	darkorange =	'#e2795b',

	error    =		'#FF5370',
	link     =		'#80CBC4',
	cursor   =		'#FFCC00',

	none     =      'NONE'
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

    if config.text_contrast.darker == true then
        -- Lighter theme style with high contrast

        material.comments =		'#757575'
        material.line_numbers =	'#5C5C5C'

    end

elseif vim.g.material_style == 'lighter' then

    if config.text_contrast.lighter == true then
        -- Lighter theme style with high contrast

        material.bg =			'#FAFAFA'
        material.bg_alt =		'#FFFFFF'
        material.fg =			'#213B47' -- 20% darkened
        material.text =			'#61747D' -- 20% darkened
        material.comments =		'#778C96' -- 20% darkened
        material.selection = 	'#e2e9e9' -- 15% saturation, 10% lightness
        material.contrast =		'#EEEEEE'
        material.active =		'#E7E7E8'
        material.border =		'#D3E1E8'
        material.line_numbers =	'#B6BFC3' -- 10% darkened
        material.highlight =	'#E7E7E8'
        material.disabled =		'#D2D4D5'
        material.cursor =		'#272727'
        material.accent =		'#0089A1' -- 20% darkened

        material.white =		'#FFFFFF'
        material.gray = 		'#717CB4'
        material.black =		'#000000'
        material.red =  		'#B20602' -- 20% darkened
        material.green =		'#5E8526' -- 20% darkened
        material.yellow =		'#C37101' -- 20% darkened
        material.blue = 		'#2E4F85' -- 20% darkened
        material.paleblue =		'#54637D' -- 20% darkened
        material.cyan = 		'#067A82' -- 20% darkened
        material.purple =		'#491ACC' -- 20% darkened
        material.orange =		'#C43A14' -- 20% darkened
        material.pink = 		'#CC203D' -- 20% darkened

    else
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

    end

elseif vim.g.material_style == 'palenight' then
	-- Palenight theme style

	material.bg =			'#292D3E'
	material.bg_alt =		'#1B1E2B'
	material.fg =			'#A6ACCD'
	material.text =			'#717CB4'
	material.comments =		'#676E95'
	material.selection = 	'#444267'
	material.contrast =		'#202331'
	material.active =		'#414863'
	material.border =		'#676E95'
	material.line_numbers =	'#3A3F58'
	material.highlight =	'#444267'
	material.disabled =		'#515772'
	material.accent =		'#AB47BC'

elseif vim.g.material_style == 'deep ocean' then
	-- Deep Ocean theme style

	material.bg =			'#0F111A'
	material.bg_alt =		'#090B10'
	material.fg =			'#A6ACCD'
	material.text =			'#717CB4'
	material.comments =		'#464B5D'
	material.selection = 	'#1F2233'
	material.contrast =		'#090B10'
	material.active =		'#1A1C25'
	material.border =		'#1F2233'
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
	material.selection = 	'#464B5D'
	material.contrast =		'#1E272C'
	material.active =		'#314549'
	material.border =		'#2A373E'
	material.line_numbers =	'#37474F'
	material.highlight =	'#425B67'
	material.disabled =		'#415967'
	material.accent =		'#009688'

end

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if config.contrast == false then
    material.sidebar = material.bg
    material.float = material.bg
else
    material.sidebar = material.bg_alt
    material.float = material.bg_alt
end

-- Set black titles for lighter style
if vim.g.material_style == 'lighter' then
    material.title = material.black
else
    material.title = material.white
end

-- Apply user defined colors
if type(config.custom_colors) == "table" then
	for key, value in pairs(config.custom_colors) do
		-- If the color starts with a #
		if string.sub(value, 1, 1) == "#" then
			-- Hex override
			material[key] = value
		-- IF it doesn't, dont accept it
		else
			-- Another group
			if not material[value] then
				error("Color " .. value .. " does not exist")
			else
				material[key] = material[value]
			end
		end
	end
end

return material
