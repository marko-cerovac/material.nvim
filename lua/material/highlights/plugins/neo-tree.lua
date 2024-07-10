local colors = require "material.colors"
local settings = require "material.util.config".settings

-- remove the variables that you won't be needing
-- to see what colors are available, check colors/init.lua
local e = colors.editor
local g = colors.git
local b = colors.backgrounds

local M = {}

M.load = function()
    local plugin_hls = {
        NeoTreeNormal       = { bg = b.sidebars },
        NeoTreeNormalNC     = { bg = b.sidebars },
        NeoTreeCursorLine   = { bg = e.active },
        NeoTreeIndentMarker = { fg = e.border },
        NeoTreeTitleBar     = { fg = e.title, bg = b.floating_windows },

        NeoTreeGitAdded     = { fg = g.added },
        NeoTreeGitDeleted   = { fg = g.removed },
        NeoTreeGitIgnored   = { fg = e.disabled },
        NeoTreeGitModified  = { fg = g.modified },
        NeoTreeGitUnstaged  = { fg = g.added },
        NeoTreeGitUntracked = { fg = g.added },
    }

    if settings.contrast.sidebars then
        plugin_hls.NeoTreeCursorLine = { bg = e.active }
    else
        plugin_hls.NeoTreeCursorLine = { bg = b.cursor_line }
    end

    return plugin_hls
end

M.async = true -- should the plugin highlights be loaded async [true/false]

return M
