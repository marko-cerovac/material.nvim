local colors = require "material.colors"

local m = colors.main
local e = colors.editor

local M = {}

M.normal = {
    a = { fg = e.bg, bg = e.accent, gui = "bold" },
    b = { fg = e.title, bg = e.bg_alt },
    c = { fg = e.fg, bg = e.selection },
}

M.insert = {
    a = { fg = e.bg, bg = m.green, gui = "bold" },
    b = { fg = e.title, bg = e.bg_alt },
}

M.visual = {
    a = { fg = e.bg, bg = m.purple, gui = "bold" },
    b = { fg = e.title, bg = e.bg_alt },
}

M.replace = {
    a = { fg = e.bg, bg = m.red, gui = "bold" },
    b = { fg = e.title, bg = e.bg_alt },
}

M.command = {
    a = { fg = e.bg, bg = m.yellow, gui = "bold" },
    b = { fg = e.title, bg = e.bg_alt },
}

M.inactive = {
    a = { fg = e.disabled, bg = e.bg },
    b = { fg = e.disabled, bg = e.bg },
    c = { fg = e.disabled, bg = e.bg }
}

return M
