local settings = require('material.config').settings

local M = {}

-- Define style_switch
if vim.g.material_style_switch == nil then
    vim.g.material_style_switch = 0
end

---checks if the user uses lualine and then sets the lualine theme
local set_lualine = function()
    local has_lualine, lualine = pcall(require, "lualine")
    if has_lualine then
        lualine.setup {
            options = {
                theme = "auto"
            }
        }
    end
end

---switch to a given style
---@param style string name of the style to switch to
M.change_style = function(style)
    set_lualine()
    vim.g.material_style = style
    print("Material style: ", style)
    vim.cmd "colorscheme material"
end

---toggle between styles
M.toggle_style = function()
    local styles = {
        "darker",
        "lighter",
        "palenight",
        "oceanic",
        "deep ocean"
    }
    M.style_iterator = (M.style_iterator % (#styles)) + 1
    M.change_style(styles[M.style_iterator])
end

---toggle the end-of-buffer lines (~)
M.toggle_eob = function()
    local colors = require("material.colors").editor

    settings.disable.eob_lines = not settings.disable.eob_lines

    if settings.disable.eob_lines then
        vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = colors.bg })
    else
        vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = colors.disabled })
    end
end

---use telescope to change the style
M.find_style = function()
    require("material.telescope_styles").find()
end

return M
