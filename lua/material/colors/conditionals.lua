local colors   = require "material.colors"
local settings = require "material.util.config".settings
local disabled = settings.disable

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

-- fix the cursorline color
if not settings.contrast.cursor_line then
    colors.backgrounds.cursor_line = colors.editor.active
end

--[[ if settings.smart_syntax then
    colors.syntax.field = colors.editor.fg_dark
end ]]

-- disable the background
if disabled.background then
    colors.editor.bg = "NONE"
    colors.editor.bg_alt = "NONE"

    for k, _ in pairs(settings.contrast) do
        colors.backgrounds[k] = "NONE"
    end
end

-- apply user defined colors
if type(settings.custom_colors) == "function" then
    settings.custom_colors(colors)
end

return colors
