local colors = require "material.colors"

local m = colors.main
local e = colors.editor
local s = colors.syntax

local M = {}

M.load = function()
    local plugin_hls = {
        -- nvim-dap
        DapBreakpoint = { fg = m.red },
        DapBreakpointCondition = { fg = m.orange },
        DapStopped    = { fg = m.yellow },
        DapLogPoint = { fg = m.paleblue },

        -- nvim-dap-ui
        DapUIFloatBorder = { fg = e.border, bg = e.bg },
        DapUIDecoration  = { fg = m.blue },
        DAPUIType = { fg = s.type },
        -- DapUIVariable    = { fg = e.fg },

        DapUIWatchesError = { link = 'DiagnosticError' },
    }

    return plugin_hls
end

M.async = true

return M
