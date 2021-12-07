-- This file is used for applying the settings
-- that the user passed trough the setup function

local config = require('material.config').options

local colors = {}

-- Add contrast to Lighter style
if vim.g.material_style == 'lighter' then

	if config.high_visibility.lighter == true then

		-- Lighter theme style with high contrast
		colors.fg =				'#213B47' -- 20% darkened
		colors.text =			'#61747D' -- 20% darkened
		colors.comments =		'#778C96' -- 20% darkened
		colors.selection = 		'#e2e9e9' -- 15% saturation, 10% lightness
		colors.line_numbers =	'#B6BFC3' -- 10% darkened
		colors.accent =			'#0089A1' -- 20% darkened

		colors.red =			'#B20602' -- 20% darkened
		colors.green =			'#5E8526' -- 20% darkened
		colors.yellow =			'#C37101' -- 20% darkened
		colors.blue = 			'#2E4F85' -- 20% darkened
		colors.paleblue =		'#54637D' -- 20% darkened
		colors.cyan = 			'#067A82' -- 20% darkened
		colors.purple =			'#491ACC' -- 20% darkened
		colors.orange =			'#C43A14' -- 20% darkened
		colors.pink = 			'#CC203D' -- 20% darkened

	else
		-- default Lighter theme style
		colors.fg =				'#546E7A'
		colors.text =			'#94A7B0'
		colors.comments =		'#AABFC9'
		colors.selection = 		'#80CBC4'
		colors.line_numbers	=	'#CFD8DC'
		colors.accent =			'#00BCD4'

		colors.red =			'#E53935'
		colors.green =			'#91B859'
		colors.yellow =			'#F6A434'
		colors.blue = 			'#6182B8'
		colors.paleblue =		'#8796B0'
		colors.cyan = 			'#39ADB5'
		colors.purple =			'#7C4DFF'
		colors.orange =			'#F76D47'
		colors.pink = 			'#FF5370'
	end

	-- Text and titles should be black on the light variant
    colors.title = colors.black

else
    colors.title = colors.white
end

-- Add contrast to Darker style
if vim.g.material_style == 'darker' then
	if config.high_visibility.darker == true then
		-- Darker theme style with high contrast
		colors.comments =		'#757575'
		colors.line_numbers =	'#5C5C5C'
	else
		-- default Darker theme style
		colors.comments =		'#616161'
		colors.line_numbers =	'#424242'

	end
end




-- Apply user defined colors
if type(config.custom_colors) == "table" then
	for key, value in pairs(config.custom_colors) do
		-- If the color starts with a #
		if string.sub(value, 1, 1) == "#" then
			-- Hex override
			colors[key] = value
		-- IF it doesn't, dont accept it
		else
			-- Another group
			if not colors[value] then
				error("Color " .. value .. " does not exist")
			else
				colors[key] = colors[value]
			end
		end
	end
end

return colors;
