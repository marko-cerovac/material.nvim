local colors = require "material.colors"

local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {

        FlashBackdrop = { fg = e.disabled },
        FlashMatch = { bg = e.selection, fg = e.fg },
        FlashLabel = {fg = e.bg, bg = e.accent, bold = true },
        FlashCurrent = { fg = e.title }
    }

    return plugin_hls
end

M.async = true

return M
