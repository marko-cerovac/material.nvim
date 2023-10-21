local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        NoiceCmdlineIcon              = { fg = m.paleblue },
        NoiceCmdlineIconLua           = { fg = m.blue },
        NoiceCmdlineIconSearch        = { fg = m.paleblue },
        NoiceCmdlinePopupTitle        = { fg = e.paleblue },
        NoiceCmdlinePopupBorder       = { fg = e.border },
        NoiceCmdlinePopupBorderSearch = { fg = e.border },
        NoiceConfirmBorder            = { fg = e.border },
    }

    return plugin_hls
end

M.async = true

return M
