local config = require('material.config').options

-- Define style_switch
if vim.g.material_style_switch == nil then
    vim.g.material_style_switch = 0
end

local set_lualine = function ()
	local lualine = pcall('lualine')
	if lualine then
		lualine.setup {
			options = {
				theme = 'material-nvim'
			}
		}
	end
end

-- Change_style takes a style name as a parameter and switches to that style
local change_style = function (style)
	set_lualine()
	vim.g.material_style = style
	print("Material style: ", style)
	vim.cmd[[colorscheme material]]
 end

-- Toggle_style takes no parameters toggles the style on every function call
local toggle_style = function ()
	local switch = { "darker", "lighter", "palenight", "oceanic", "deep ocean" }
	vim.g.material_style_switch = (vim.g.material_style_switch % table.getn(switch)) + 1
	change_style(switch[vim.g.material_style_switch])
end

local toggle_eob = function ()
	if config.disable.eob_lines == true then
		config.disable.eob_lines = false
	else
		config.disable.eob_lines = true
	end

	local editor = require("material.theme").loadEditor()
	require("material.util").highlight( "EndOfBuffer", editor.EndOfBuffer)
end

return {
	set_lualine = set_lualine,
	change_style = change_style,
	toggle_style = toggle_style,
	toggle_eob = toggle_eob
}

