local colors = require "material.colors"

local m = colors.main
local e = colors.editor
local b = colors.backgrounds
local l = colors.lsp

local M = {}

M.load = function()
    local plugin_hls = {
        TroubleText            = { fg = e.fg_dark, bg = b.sidebars },
        TroubleCount           = { fg = m.purple, bg = b.sidebars },
        TroubleNormal          = { fg = e.fg, bg = b.sidebars },
        TroubleSignError       = { fg = l.error, bg = b.sidebars },
        TroubleSignWarning     = { fg = m.yellow, bg = b.sidebars },
        TroubleSignInformation = { fg = m.paleblue, bg = b.sidebars },
        TroubleSignHint        = { fg = m.purple, bg = b.sidebars },
        TroubleFoldIcon        = { fg = e.accent, bg = b.sidebars },
        TroubleIndent          = { fg = e.border, bg = b.sidebars },
        TroubleLocation        = { fg = e.disabled, bg = b.sidebars },
    }

    return plugin_hls
end

M.async = true

return M
