local colors = require "material.colors"

local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        Sneak      = { fg = e.bg, bg = e.accent },
        SneakScope = { bg = e.selection },
    }

    return plugin_hls
end

M.async = true

return M
