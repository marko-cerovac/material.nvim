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

-- apply user defined colors
if type(settings.custom_colors) == "function" then
    settings.override_colors(colors)
else
    vim.notify("Error in your material.nvim config", vim.log.levels.WARN)
    vim.notify("custom_colors must be a function", vim.log.levels.WARN)
end
