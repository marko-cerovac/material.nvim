local colors = require "material.colors"

local m = colors.main
local e = colors.editor
local b = colors.backgrounds

local M = {}

M.load = function()
    local plugin_hls = {
        TelescopeNormal         = { fg = e.fg, bg = b.floating_windows },
        TelescopePromptBorder   = { fg = e.border, bg = b.floating_windows },
        TelescopeResultsBorder  = { link = "TelescopePromptBorder" },
        TelescopePreviewBorder  = { link = "TelescopePromptBorder" },
        TelescopeSelectionCaret = { fg = m.green, bg = e.selection },
        TelescopeSelection      = { fg = m.green, bg = e.selection },
        TelescopeMultiSelection = { fg = m.yellow },
        TelescopeMatching       = { bold = true },
    }

    return plugin_hls
end

M.async = true

return M
