local colors = require "material.colors"
local style = require "material.util.config".settings.lualine_style

local m = colors.main
local e = colors.editor
local s = colors.syntax

local M = {}

if style == "stealth" then

    M.normal = {
        a = { fg = e.accent, bg = e.highlight },
        b = { fg = e.title, bg = e.bg_alt },
        c = { fg = s.comments, bg = e.bg },
    }

    M.insert = {
        a = { fg = m.green, bg = e.highlight },
        b = { fg = e.title, bg = e.bg_alt },
    }

    M.visual = {
        a = { fg = m.purple, bg = e.highlight },
        b = { fg = e.title, bg = e.bg_alt },
    }

    M.replace = {
        a = { fg = m.red, bg = e.highlight },
        b = { fg = e.title, bg = e.bg_alt },
    }

    M.command = {
        a = { fg = m.yellow, bg = e.highlight },
        b = { fg = e.title, bg = e.bg_alt },
    }

    M.inactive = {
        a = { fg = e.disabled, bg = e.bg },
        b = { fg = e.disabled, bg = e.bg },
        c = { fg = e.disabled, bg = e.bg }
    }

else

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

end

return M
