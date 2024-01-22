local colors = require "material.colors"

local b = colors.backgrounds
local e = colors.editor
local m = colors.main
local s = colors.syntax

local M = {}

M.load = function()
    local plugin_hls = {
        NotifyBackground = { fg = e.fg, bg = b.floating_windows },
        --- Border
        NotifyERRORBorder = { fg = m.red, bg = b.floating_windows },
        NotifyWARNBorder = { fg = m.yellow, bg = b.floating_windows },
        NotifyINFOBorder = { fg = m.paleblue, bg = b.floating_windows },
        NotifyDEBUGBorder = { fg = s.comments, bg = b.floating_windows },
        NotifyTRACEBorder = { fg = m.purple, bg = b.floating_windows },
        --- Icons
        NotifyERRORIcon = { fg = m.red },
        NotifyWARNIcon = { fg = m.yellow },
        NotifyINFOIcon = { fg = m.paleblue },
        NotifyDEBUGIcon = { fg = s.comments },
        NotifyTRACEIcon = { fg = m.purple },
        --- Title
        NotifyERRORTitle = { fg = m.red },
        NotifyWARNTitle = { fg = m.yellow },
        NotifyINFOTitle = { fg = m.paleblue },
        NotifyDEBUGTitle = { fg = s.comments },
        NotifyTRACETitle = { fg = m.purple },
        --- Body
        NotifyERRORBody = { fg = e.fg, bg = b.floating_windows },
        NotifyWARNBody = { fg = e.fg, bg = b.floating_windows },
        NotifyINFOBody = { fg = e.fg, bg = b.floating_windows },
        NotifyDEBUGBody = { fg = e.fg, bg = b.floating_windows },
        NotifyTRACEBody = { fg = e.fg, bg = b.floating_windows },
    }

    return plugin_hls
end

M.async = true

return M
