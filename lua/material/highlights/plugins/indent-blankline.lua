local colors = require "material.colors"

local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        -- old indent blankline hl-s
        IndentBlanklineChar        = { fg = e.border },
        IndentBlanklineContextChar = { fg = e.disabled },

        -- new indent blankline hl-s
        IblIndent = { fg = e.border },
        IblScope  = { fg = e.disabled },
    }

    return plugin_hls
end

M.async = false

return M
