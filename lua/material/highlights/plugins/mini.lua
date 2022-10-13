local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        MiniCompletionActiveParameter = { underline = true },
        MiniCursorword                = { underline = true },
        MiniCursorwordCurrent         = { underline = true },
        MiniIndentscopeSymbol         = { fg = m.cyan },
        MiniIndentscopePrefix         = { nocombine = true },
        MiniJump                      = { fg = e.bg, bg = e.accent },
        MiniJump2dSpot                = { fg = e.accent, bold = true, nocombine = true },
        MiniStarterCurrent            = { nocombine = true },
        MiniStarterFooter             = { fg = m.yellow, italic = true },
        MiniStarterHeader             = { fg = e.comments },
        MiniStarterInactive           = { link = "Comment" },
        MiniStarterItem               = { link = "Normal" },
        MiniStarterItemBullet         = { fg = e.border },
        MiniStarterItemPrefix         = { fg = m.yellow },
        MiniStarterSection            = {  fg = m.cyan },
        MiniStarterQuery              = { fg = m.paleblue },
        MiniStatuslineDevinfo         = { fg = e.fg, bg = e.active },
        MiniStatuslineFileinfo        = { link = "MiniStatuslineDevinfo" },
        MiniStatuslineFilename        = { fg = e.disabled, bg = e.bg },
        MiniStatuslineInactive        = { link = "MiniStatuslineFilename" },
        MiniStatuslineModeCommand     = { fg = e.bg, bg = m.yellow, bold = true },
        MiniStatuslineModeInsert      = { fg = e.bg, bg = m.yellow, bold = true },
        MiniStatuslineModeNormal      = { fg = e.bg, bg = e.accent, bold = true },
        MiniStatuslineModeOther       = { fg = e.bg, bg = m.cyan, bold = true },
        MiniStatuslineModeReplace     = { fg = e.bg, bg = m.red, bold = true },
        MiniStatuslineModeVisual      = { fg = e.bg, bg = m.purple, bold = true },
        MiniSurround                  = { link = "IncSearch" },
        MiniTablineCurrent            = { fg = e.bg, bg = e.accent, bold = true },
        MiniTablineFill               = { link = "TabLineFill" },
        MiniTablineHidden             = { fg = e.fg, bg = e.bg },
        MiniTablineModifiedCurrent    = { fg = e.accent, bg = e.bg, bold = true },
        MiniTablineModifiedHidden     = { fg = e.bg, bg = e.fg },
        MiniTablineModifiedVisible    = { fg = e.accent, bg = e.bg },
        MiniTablineTabpagesection     = { fg = e.title, bg = e.selection, bold = true },
        MiniTablineVisible            = { fg = e.bg, bg = e.accent },
        MiniTestEmphasis              = { bold = true },
        MiniTestFail                  = { fg = m.red, bold = true },
        MiniTestPass                  = { fg = m.yellow, bold = true },
        MiniTrailspace                = { bg = m.red },
    }

    return plugin_hls
end

M.async = true

return M
