local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        -- dashboard.nvim
        DashboardShortCut = { fg = m.red },
        DashboardHeader   = { fg = e.comments },
        DashboardCenter   = { fg = e.accent },
        DashboardFooter   = { fg = m.yellow, italic = true },
    }

    return plugin_hls
end

M.async = false

return M
