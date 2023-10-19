local colors = require "material.colors"

local e = colors.editor
local b = colors.backgrounds

local M = {}

M.load = function()
    local plugin_hls = {
        HarpoonWindow = { fg = e.fg, bg = b.floating_windows },
        HarpoonBorder = { fg = e.border, bg = b.floating_windows },
    }

    return plugin_hls
end

M.async = true

return M
