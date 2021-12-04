local config = require('material.config').options

local styles = {}

if config.italics.comments then
	styles.comments = 'italic'
else
	styles.comments = 'NONE'
end

if config.italics.keywords then
	styles.keywords = 'italic'
else
	styles.keywords = 'NONE'
end

if config.italics.functions then
	styles.functions = 'italic'
else
	styles.functions = 'NONE'
end

if config.italics.variables then
	styles.variables = 'italic'
else
	styles.variables = 'NONE'
end

if config.italics.strings then
	styles.strings = 'italic'
else
	styles.strings = 'NONE'
end


return styles
