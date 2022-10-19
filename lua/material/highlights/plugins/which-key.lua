local colors = require "material.colors"

local m = colors.main
local e = colors.editor
local b = colors.backgrounds

local M = {}

M.load = function()
    local plugin_hls = {
        WhichKey          = { fg = e.accent, bold = true },
        WhichKeyGroup     = { fg = m.gray },
        WhichKeyDesc      = { fg = e.fg, italic = true },
        WhichKeySeparator = { fg = m.red },
        WhichKeyFloat     = { bg = b.floating_windows },
    }

    return plugin_hls
end

M.async = true

return M
