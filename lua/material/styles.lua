local config = require('material.config').options

local styles = {}

-- Apply the italics configuration
for key, value in pairs(config.italics) do
	if value == true then
		styles[key] = 'italic'
	else
		styles[key] = 'NONE'
	end
end


return styles
