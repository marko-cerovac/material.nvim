local colors = require "material.colors"

local fg = colors.editor.selection
local bg = colors.editor.bg

local M = {}

M.load = function()
    local plugin_hls = {
        NvimSeparator = {
            fg = fg,
            bg = bg,
        },
    }

    return plugin_hls
end

M.async = true

return M
