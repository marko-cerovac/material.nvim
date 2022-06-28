local config = require('material.config').options

local styles = {}

-- Apply the italics configuration
for key, value in pairs(config.italics) do
	if value == true then
		styles[key] = true
	else
		styles[key] = false
	end
end


return styles
