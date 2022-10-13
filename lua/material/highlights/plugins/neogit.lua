local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        NeogitBranch               = { fg = m.paleblue },
        NeogitRemote               = { fg = m.purple },
        NeogitHunkHeader           = { fg = e.fg, bg = e.highlight },
        NeogitHunkHeaderHighlight  = { fg = m.blue, bg = e.contrast },
        NeogitDiffContextHighlight = { fg = e.fg_alt, bg = e.contrast },
        NeogitDiffDeleteHighlight  = { fg = m.red },
        NeogitDiffAddHighlight     = { fg = m.yellow },
    }

    return plugin_hls
end

M.async = true

return M
