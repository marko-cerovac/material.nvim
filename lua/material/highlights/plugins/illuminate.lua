local colors = require "material.colors"

local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        IlluminatedWordText = { bg = e.highlight },
        IlluminatedWordRead = { bg = e.highlight },
        IlluminatedWordWrite = { bg = e.highlight, standout = true },

    }

    return plugin_hls
end

M.async = false

return M
