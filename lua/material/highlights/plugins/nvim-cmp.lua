local colors = require "material.colors"

local m = colors.main
local e = colors.editor
local s = colors.syntax

local M = {}

M.load = function()
    local plugin_hls = {
        CmpItemAbbr           = { fg = e.fg },
        CmpItemMenu           = { fg = e.disabled },
        CmpItemAbbrMatch      = { fg = e.accent, bold = true },

        CmpItemKindText       = { fg = s.comments },
        CmpItemKindMethod     = { fg = s.fn },
        CmpItemKindFunction   = { fg = s.fn },
        CmpItemKindContructor = { fg = s.fn },
        CmpItemKindField      = { fg = m.cyan },
        CmpItemKindVariable   = { fg = m.paleblue },
        CmpItemKindConstant   = { fg = m.yellow },
        CmpItemKindClass      = { fg = s.type },
        CmpItemKindInterface  = { fg = s.type },
        CmpItemKindModule     = { fg = m.orange },
        CmpItemKindProperty   = { fg = s.text },
        CmpItemKindKeyword    = { fg = s.keyword },
        CmpItemKindFile       = { fg = e.title },
        CmpItemKindFolder     = { fg = e.title },
        CmpItemKindSnippet    = { fg = m.green },
        CmpItemEnum           = { fg = s.type }, -- TODO
        CmpItemEnumMember     = { fg = m.cyan }, -- TODO
        CmpItemOperator       = { fg = s.operator }, -- TODO
        CmpItemReference      = { fg = e.fg_dark }, -- TODO

    }

    return plugin_hls
end

M.async = true

return M
