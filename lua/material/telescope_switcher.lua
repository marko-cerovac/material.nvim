local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local sorters = require "telescope.sorters"

local center_prompt = {
	layout_strategy = "vertical",
	layout_config = {
		height = 10,
		width = 0.3,
		prompt_position = "top",
	},
	sorting_strategy = "ascending",
}

local function enter(prompt_bufnr)
	local selected = action_state.get_selected_entry()
	vim.g.material_style = selected[1]
	vim.cmd "colorscheme material"
	actions.close(prompt_bufnr)
end

local opts = {
	finder = finders.new_table {
		"darker",
		"lighter",
		"deep ocean",
		"oceanic",
		"palenight"
	},
	prompt_title = "Material",
	results_title = "styles",
	sorter = sorters.get_fzy_sorter({}),
	borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
	attach_mappings = function (_, map)
		map("i", "<CR>", enter)
		map("n", "<CR>", enter)
		return true
	end
}

local find = function ()
	local colors = pickers.new(center_prompt, opts)
	colors:find()
end

return {find = find}
