local colors = require "material.colors"

local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        FidgetTitle = { fg = e.accent },
        FidgetTask = { bg = e.none, fg = e.fg },
    }

    return plugin_hls
end

M.async = true

return M
