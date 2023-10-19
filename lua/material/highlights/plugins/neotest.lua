local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        NeotestPassed = { fg = m.green },
        NeotestFailed = { link = "DiagnosticError" },
        NeotestRunning = { fg = m.yellow },
        NeotestSkipped = { link = "DiagnosticHint" },
        NeotestTest = { fg = e.fg },
        NeotestNamespace = { fg = m.purple },
        NeotestFocused = { bold = true, underline = true },
        NeotestFile = { fg = m.blue },
        NeotestDir = { fg = m.blue },
        NeotestIndent = { fg = e.contrast },
        NeotestExpandMarker = { fg = e.contrast },
        NeotestAdapterName = { fg = m.darkred },
        NeotestWinSelect = { fg = m.blue, bold = true },
        NeotestMarked = { fg = m.darkyellow, bold = true },
        NeotestTarget = { fg = m.red },
        NeotestUnknown = { fg = e.fg },
    }

    return plugin_hls
end

M.async = true

return M
