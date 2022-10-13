local colors = require "material.colors"

local e = colors.editor
local g = colors.git

local M = {}

M.load = function()
    local plugin_hls = {
        -- gitsigns.nvim
        GitSignsAdd      = { fg = g.added },
        GitSignsChange   = { fg = g.modified },
        GitSignsDelete   = { fg = g.removed },
        GitSignsAddNr    = { fg = g.added },
        GitSignsAddLn    = { fg = g.added },
        GitSignsChangeNr = { fg = g.modified, bg = e.bg_num },
        GitSignsChangeLn = { fg = g.modified },
        GitSignsDeleteNr = { fg = g.removed, bg = e.bg_num },
        GitSignsDeleteLn = { fg = g.removed },
    }

    return plugin_hls
end

M.async = false

return M
