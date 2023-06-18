local colors = require "material.colors"

local m = colors.main
local e = colors.editor
local b = colors.backgrounds

local M = {}

M.load = function()
    local plugin_hls = {
        TelescopeNormal         = { fg = e.fg, bg = b.floating_windows },
        -- TelescopeNormal         = { fg = e.disabled, bg = b.floating_windows },
        TelescopePromptBorder   = { fg = e.border, bg = b.floating_windows },
        TelescopeResultsBorder  = { link = "TelescopePromptBorder" },
        TelescopePreviewBorder  = { link = "TelescopePromptBorder" },
        TelescopePromptTitle   = { fg = e.disabled, bg = b.floating_windows },
        TelescopeResultsTitle  = { link = "TelescopePromptTitle" },
        TelescopePreviewTitle  = { link = "TelescopePromptTitle" },
        TelescopePreviewDirectory = { fg = e.fg_dark },
        TelescopeSelectionCaret = { fg = e.title, bg = e.active },
        TelescopeSelection      = { fg = e.title, bg = e.active },
        TelescopeMultiSelection = { fg = m.yellow },
        TelescopeMatching       = { bold = true },
    }

    return plugin_hls
end

M.async = true

return M
