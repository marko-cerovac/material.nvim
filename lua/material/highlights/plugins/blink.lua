local colors = require("material.colors")

local m = colors.main
local e = colors.editor
local s = colors.syntax

local M = {}

M.load = function()
    -- stylua: ignore
    local plugin_hls = {
        -- groups listed in the documentation:
        -- https://cmp.saghen.dev/configuration/appearance.html#highlight-groups

        BlinkCmpMenu                         = { fg = e.disabled },
        BlinkCmpMenuBorder                   = { fg = e.border, bg = e.bg },
        BlinkCmpMenuSelection                = { bg = e.selection },
        -- BlinkCmpScrollBarThumb               = {},
        -- BlinkCmpScrollBarGutter              = {},
        BlinkCmpLabel                        = { fg = e.fg },
        -- TODO: set this in nvim-cmp as well
        -- BlinkCmpLabelDeprecated              = { fg = e.fg, strikethrough = true },
        BlinkCmpLabelMatch                   = { fg = e.accent, bold = true },
        BlinkCmpLabelDetail                  = { link = "BlinkCmpLabel" },
        BlinkCmpLabelDescription             = { link = "BlinkCmpLabel" },
        BlinkCmpSource                       = { fg = e.disabled },
        -- BlinkCmpGhostText                    = {},
        -- BlinkCmpDoc                          = {},
        BlinkCmpDocBorder                    = { link = "BlinkCmpMenuBorder" },
        -- BlinkCmpDocSeparator                 = {},
        -- BlinkCmpDocCursorLine                = {},
        -- BlinkCmpSignatureHelp                = {},
        BlinkCmpSignatureHelpBorder          = { link = "BlinkCmpMenuBorder" },
        -- BlinkCmpSignatureHelpActiveParameter = {},

        BlinkCmpKind                         = { fg = m.blue },
        BlinkCmpKindText                     = { fg = s.comments },
        BlinkCmpKindMethod                   = { fg = s.fn },
        BlinkCmpKindFunction                 = { fg = s.fn },
        BlinkCmpKindContructor               = { fg = s.fn },
        BlinkCmpKindField                    = { fg = m.cyan },
        BlinkCmpKindVariable                 = { fg = m.paleblue },
        BlinkCmpKindValue                    = { fg = m.paleblue },
        BlinkCmpKindConstant                 = { fg = m.yellow },
        BlinkCmpKindClass                    = { fg = s.type },
        BlinkCmpKindStruct                   = { fg = s.type },
        BlinkCmpKindInterface                = { fg = s.type },
        BlinkCmpKindModule                   = { fg = m.orange },
        BlinkCmpKindProperty                 = { fg = s.text },
        BlinkCmpKindKeyword                  = { fg = s.keyword },
        BlinkCmpKindUnit                     = { fg = m.green },
        BlinkCmpKindFile                     = { fg = e.title },
        BlinkCmpKindFolder                   = { fg = e.title },
        BlinkCmpKindSnippet                  = { fg = m.green },
        BlinkCmpKindEvent                    = { fg = m.blue },
        BlinkCmpKindTypeParameter            = { fg = m.blue },
        BlinkCmpKindCopilot                  = { fg = m.darkcyan },
        BlinkCmpKindColor                    = { fg = m.red },
        BlinkCmpKindEnum                     = { fg = s.type }, -- TODO
        BlinkCmpEnumMember                   = { fg = m.cyan }, -- TODO
        BlinkCmpKindOperator                 = { fg = s.operator }, -- TODO
        BlinkCmpKindReference                = { fg = e.fg_dark }, -- TODO
    }

  return plugin_hls
end

M.async = true

return M
