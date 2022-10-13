local pickers      = require "telescope.pickers"
local finders      = require "telescope.finders"
local sorters      = require "telescope.sorters"
local actions      = require "telescope.actions"
local action_state = require "telescope.actions.state"

local M = {}

---table that defines the look and layout of the prompt
local center_prompt = {
	layout_strategy = "vertical",
	layout_config = {
		height = 10,
		width = 0.3,
		prompt_position = "top",
	},
	sorting_strategy = "ascending",
}

---takes the current entry and switches to that style
---@param prompt_bufnr number buffer number of the prompt
local function enter(prompt_bufnr)
	local selected = action_state.get_selected_entry()
	vim.g.material_style = selected[1]
	vim.cmd "colorscheme material"
	actions.close(prompt_bufnr)
end

---options to call telescope with
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

---find styles using telesope
M.find = function ()
	local colors = pickers.new(center_prompt, opts)
	colors:find()
end

return M
