local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        NoiceCmdlineIcon              = { fg = m.paleblue },
        NoiceCmdlineIconLua           = { fg = m.blue },
        NoiceCmdlinePopupBorder       = { fg = e.border },
        NoiceCmdlineIconSearch        = { fg = m.paleblue },
        NoiceCmdlinePopupBorderSearch = { fg = e.border },
        NoiceConfirmBorder            = { fg = e.border },
    }

    return plugin_hls
end

M.async = true

return M
