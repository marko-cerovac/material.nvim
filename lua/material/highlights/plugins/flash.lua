local colors = require "material.colors"

local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        FlashMatch = { bg = e.visual },
        FlashLabel = { bg = e.accent, reverse = true },
    }

    return plugin_hls
end

M.async = true

return M
