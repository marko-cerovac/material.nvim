local config = require('material.config').options

local styles = {}

for key, value in pairs(config.italics) do
	if value == true then
		styles[key] = 'italic'
	else
		styles[key] = 'NONE'
	end
end


return styles
