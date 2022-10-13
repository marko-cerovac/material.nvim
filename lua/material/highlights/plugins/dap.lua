local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        -- nvim-dap
        DapBreakpoint = { fg = m.red },
        DapStopped    = { fg = m.yellow },

        -- nvim-dap-ui
        DapUIFloatBorder = { fg = e.border, bg = e.bg },
        DapUIDecoration  = { fg = m.blue },
        -- DapUIVariable    = { fg = e.fg },
    }

    return plugin_hls
end

M.async = true

return M
