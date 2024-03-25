local settings = require "material.util.config".settings

local M = {}

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
    -- print("Material style: ", style)
    vim.cmd "colorscheme material"
end

---toggle between styles
M.toggle_style = function()
    if vim.g.material_style_iterator == nil then
        vim.g.material_style_iterator = 0
    end
    local styles = {
        "darker",
        "lighter",
        "palenight",
        "oceanic",
        "deep ocean"
    }
    vim.g.material_style_iterator = (vim.g.material_style_iterator % (#styles)) + 1
    M.change_style(styles[vim.g.material_style_iterator])
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
    require("material.functions.telescope_styles").find()
end

local rgb_to_hex = function(r, g, b)
  return string.format("#%02x%02x%02x", r, g, b)
end

local hex_to_rgb = function(c)
  c = string.lower(c)
  local r = tonumber(c:sub(2, 3), 16)
  local g = tonumber(c:sub(4, 5), 16)
  local b = tonumber(c:sub(6, 7), 16)
  return { r, g, b }
end

M.round = function(val)
  return math.floor(val + 0.5)
end

M.clamp = function(val, min, max)
  return math.min(math.max(val, min), max)
end

M.blend = function(foreground, background, alpha)
  local bg = hex_to_rgb(background)
  local fg = hex_to_rgb(foreground)

  local blend_channel = function(i)
    return M.round(M.clamp(alpha * fg[i] + ((1 - alpha) * bg[i]), 0, 255))
  end

  local r = blend_channel(1)
  local g = blend_channel(2)
  local b = blend_channel(3)

  return rgb_to_hex(r, g, b)
end

M.darken = function(color, amount, bg)
  return M.blend(color, bg or "#000000", amount)
end

return M
