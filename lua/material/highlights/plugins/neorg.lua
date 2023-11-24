local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        ["@neorg.headings.1.prefix"] = { fg = m.purple },
        ["@neorg.headings.1.title"]  = { fg = m.purple },
        ["@neorg.headings.2.prefix"] = { fg = m.green },
        ["@neorg.headings.2.title"]  = { fg = m.green },
        ["@neorg.headings.3.prefix"] = { fg = m.yellow },
        ["@neorg.headings.3.title"]  = { fg = m.yellow },
        ["@neorg.headings.4.prefix"] = { fg = m.red },
        ["@neorg.headings.4.title"]  = { fg = m.red },
        ["@neorg.headings.5.prefix"] = { fg = m.cyan },
        ["@neorg.headings.5.title"]  = { fg = m.cyan },
        ["@neorg.headings.6.prefix"] = { fg = m.blue },
        ["@neorg.headings.6.title"]  = { fg = m.blue },
        ["@neorg.lists.ordered.prefix"]  = { fg = m.orange },
        ["@neorg.quotes.1.prefix"]  = { fg = m.blue },
        ["@neorg.quotes.2.prefix"]  = { fg = m.yellow },
        ["@neorg.quotes.3.prefix"]  = { fg = m.cyan },
        ["@neorg.quotes.1.content"]  = { fg = m.blue },
        ["@neorg.quotes.2.content"]  = { fg = m.yellow },
        ["@neorg.quotes.3.content"]  = { fg = m.cyan },
        ["@neorg.todo_items.undone"]  = { fg = m.blue },
        ["@neorg.todo_items.urgent"]  = { fg = m.red },
    }

    return plugin_hls
end

M.async = true

return M
