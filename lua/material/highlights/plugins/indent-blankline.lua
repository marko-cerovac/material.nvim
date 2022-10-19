local colors = require "material.colors"

local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        IndentBlanklineChar        = { fg = e.border },
        IndentBlanklineContextChar = { fg = e.disabled },
    }

    return plugin_hls
end

M.async = false

return M
