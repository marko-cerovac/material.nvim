local colors = require "material.colors"

local m = colors.main

local M = {}

M.load = function()
    local plugin_hls = {
        DevIconC        = { fg = m.cyan },
        DevIconCpp      = { fg = m.cyan },
        DevIconGo       = { fg = m.cyan },
        DevIconTs       = { fg = m.cyan },
        DevIconLua      = { fg = m.blue },
        DevIconDart     = { fg = m.blue },
        DevIconJs       = { fg = m.yellow },
        DevIconPy       = { fg = m.yellow },
        DevIconCss      = { fg = m.yellow },
        DevIconJson     = { fg = m.yellow },
        DevIconJava     = { fg = m.red },
        DevIconRb       = { fg = m.red },
        DevIconRs       = { fg = m.red },
        DevIconMd       = { fg = m.red },
        DevIconHtml     = { fg = m.red },
        DevIconMakefile = { fg = m.red },
        DevIconRed      = { fg = m.red },
        DevIconHs       = { fg = m.purple },
        DevIconPhp      = { fg = m.purple },
        DevIconH        = { fg = m.purple },
        DevIconSh       = { fg = m.green },
        DevIconBash     = { fg = m.green },
        DevIconVim      = { fg = m.green },
        DevIconVue      = { fg = m.green },
        DevIconTerminal = { fg = m.green },
        DevIconDiff     = { fg = m.orange },
        DevIconConf     = { fg = m.orange },
        DevIconToml     = { fg = m.orange },
        DevIconKotlin   = { fg = m.orange },
        DevIconSwift    = { fg = m.orange },
    }

    return plugin_hls
end

M.async = true

return M
