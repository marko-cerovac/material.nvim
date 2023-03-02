local colors = require "material.colors"

local m = colors.main
local e = colors.editor
local g = colors.git
local l = colors.lsp
local s = colors.syntax
local b = colors.backgrounds

local M = {}

M.load = function()
    local plugin_hls = {
        ["@neorg.headings.1.prefix"] = { fg = m.cyan },
        ["@neorg.headings.1.title"]  = { fg = m.cyan },
        ["@neorg.headings.2.prefix"] = { fg = m.red },
        ["@neorg.headings.2.title"]  = { fg = m.red },
        ["@neorg.headings.3.prefix"] = { fg = m.green },
        ["@neorg.headings.3.title"]  = { fg = m.green },
        ["@neorg.headings.4.prefix"] = { fg = m.yellow },
        ["@neorg.headings.4.title"]  = { fg = m.yellow },
        ["@neorg.headings.5.prefix"] = { fg = m.purple },
        ["@neorg.headings.5.title"]  = { fg = m.purple },
        ["@neorg.headings.6.prefix"] = { fg = m.blue },
        ["@neorg.headings.6.title"]  = { fg = m.blue },
        -- HighlightName = { values },
        -- HighlightName = { values },
        -- ...
    }

    return plugin_hls
end

M.async = true

return M
