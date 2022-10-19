local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.load = function()
    local plugin_hls = {
        NavicIconsFile          = { fg = e.title, bg = e.selection },
        NavicIconsModule        = { link = "NavicIconsFile" },
        NavicIconsNamespace     = { fg = m.yellow, bg = e.selection },
        NavicIconsPackage       = { link = "NavicIconsFile" },
        NavicIconsClass         = { link = "NavicIconsModule" },
        NavicIconsMethod        = { fg = m.blue, bg = e.selection },
        NavicIconsProperty      = { fg = m.purple, bg = e.selection },
        NavicIconsField         = { fg = m.cyan, bg = e.selection },
        NavicIconsConstructor   = { link = "NavicIconsProperty"},
        NavicIconsEnum          = { link = "NavicIconsNamespace" },
        NavicIconsInterface     = { link = "NavicIconsModule" },
        NavicIconsFunction      = { link = "NavicIconsMethod" },
        NavicIconsVariable      = { fg = m.paleblue, bg = e.selection },
        NavicIconsConstant      = { link = "NavicIconsVariable" },
        NavicIconsString        = { fg = m.orange, bg = e.selection },
        NavicIconsNumber        = { link = "NavicIconsString" },
        NavicIconsBoolean       = { fg = m.yellow, bg = e.selection },
        NavicIconsArray         = { link = "NavicIconsString" },
        NavicIconsObject        = { link = "NavicIconsString" },
        NavicIconsKey           = { link = "NavicIconsField" },
        NavicIconsNull          = { fg = m.red, bg = e.selection },
        NavicIconsEnumMember    = { link = "NavicIconsNamespace" },
        NavicIconsStruct        = { link = "NavicIconsModule" },
        NavicIconsEvent         = { link = "NavicIconsNull" },
        NavicIconsOperator      = { link = "NavicIconsNull" },
        NavicIconsTypeParameter = { link = "NavicIconsBoolean" },
        NavicText               = { fg = e.fg, bg = e.selection },
        NavicSeparator          = { link = "NavicText" },
    }

    return plugin_hls
end

M.async = true

return M
