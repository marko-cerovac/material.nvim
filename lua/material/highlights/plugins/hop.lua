local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        HopNextKey   = { fg = e.accent, bold = true },
        HopNextKey1  = { fg = m.purple, bold = true },
        HopNextKey2  = { fg = m.blue },
        HopUnmatched = { fg = e.comments },
    }

    return plugin_hls
end

M.async = true

return M
