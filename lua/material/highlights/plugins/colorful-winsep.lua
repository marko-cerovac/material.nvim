local colors = require "material.colors"

local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        ColorfulWinSep = {
            fg = e.selection,
            bg = e.bg,
        },
        NvimSeparator = { link = "ColorfulWinSep"}
    }

    return plugin_hls
end

M.async = true

return M
