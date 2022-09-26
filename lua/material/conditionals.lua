local colors   = require "material.colors"
local settings = require "material.config".settings
local disabled = settings.disable

-- disable the background
if disabled.background then
    colors.editor.bg = "NONE"
end

-- disable borders
if disabled.borders then
    colors.editor.vsplit = colors.editor.bg
else
    colors.editor.vsplit = colors.editor.border
end

-- apply contrasted backgrounds
for k, v in pairs(settings.contrast) do
    if v == true then
        colors.backgrounds[k] = colors.editor.bg_alt
    end
end

-- fix cursorline bg
if colors.editor.bg_cursor_line == colors.editor.bg then
    colors.editor.bg_cursor_line = colors.editor.active
end

-- apply user defined colors
if type(settings.custom_colors) == "function" then
    settings.override_colors(colors)
end
