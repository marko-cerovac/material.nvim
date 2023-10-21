local colors = require "material.colors"

local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        EyelinerPrimary = {
            fg = e.cursor,
            bold = true,
            underline = true,
            ctermfg = 155,
            cterm = { underline = true },
        },
        EyelinerSecondary = {
            fg = e.accent,
            underline = true,
            ctermfg = 155,
            cterm = { underline = true },
        },
    }

    return plugin_hls
end

M.async = true

return M
