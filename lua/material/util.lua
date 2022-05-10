local util = {}
local material = require('material.theme')
local config = require('material.config').options

-- Go trough the table and highlight the group with the color values
util.highlight = function (group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""

    local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

    vim.cmd(hl)
    if color.link then
		vim.cmd("highlight! link " .. group .. " " .. color.link)
	end
end

-- Only define Material if it's the active colorshceme
function util.onColorScheme()
  if vim.g.colors_name ~= "material" then
    vim.cmd [[autocmd! Material]]
    vim.cmd [[augroup! Material]]
	-- vim.api.nvim_del_augroup_by_name("Material")
  end
end

-- Change the background for the terminal and packer windows
util.contrast = function ()
    vim.cmd [[augroup Material]]
    vim.cmd [[  autocmd!]]
    vim.cmd [[  autocmd ColorScheme * lua require("material.util").onColorScheme()]]
	for _, sidebar in ipairs(config.contrast_filetypes) do
		if sidebar == "terminal" then
			vim.cmd([[ autocmd TermOpen * setlocal winhighlight=Normal:NormalContrast,SignColumn:NormalContrast ]])
		else
			vim.cmd([[ autocmd FileType ]] .. sidebar .. [[ setlocal winhighlight=Normal:NormalContrast,SignColumn:SignColumnFloat ]])
		end
	end
    vim.cmd [[augroup end]]

	-- local group = vim.api.nvim_create_augroup("Material", { clear = true })
	-- vim.api.nvim_create_autocmd("ColorScheme", { callback = function ()
	-- 	require("material.util").onColorScheme()
	-- end, group = group })

	-- for _, sidebar in ipairs(config.contrast_filetypes) do
	-- 	if sidebar == "terminal" then
	-- 		vim.api.nvim_create_autocmd("TermOpen", {
	-- 			command = "setlocal winhighlight=Normal:NormalContrast,SignColumn:NormalContrast",
	-- 			group = group,
	-- 			buffer = 0
	-- 		})
	-- 	else
	-- 		vim.api.nvim_create_autocmd("FileType " .. sidebar, {
	-- 			command = "setlocal winhighlight=Normal:NormalContrast,SignColumn:SignColumnFloat",
	-- 			group = group,
	-- 			buffer = 0
	-- 		})
	-- 	end
	-- end
end

-- Load the theme
function util.load()
    -- Set the theme environment
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.opt.background = "dark"
    vim.opt.termguicolors = true
    vim.g.colors_name = "material"

	if config.disable.colored_cursor == false then
		vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:Cursor/Cursor"
		vim.cmd([[autocmd ExitPre * set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20]])
	end

  -- Load plugins and custom highlights
    local async

	local function async_loader()
		-- Import the table for plugins
		local plugins = material.loadPlugins()

		-- Apply the terminal colors
		if config.disable.term_colors == false then
			material.loadTerminal()
		end

		-- Apply the plugin colors
		for group, colors in pairs(plugins) do
			util.highlight(group, colors)
		end

		-- Apply user defined highlights if they exist
		if type(config.custom_highlights) == 'table' then
			for group, colors in pairs(config.custom_highlights) do
				util.highlight(group, colors)
			end
		end

		-- Apply window contrast
		util.contrast()

		-- If this function gets called asyncronously, this closure is needed
		if (async) then
			async:close()
		end
	end

	-- If async loading is enabled,
	-- execute async_loader() asyncronously, if not, load it now
	if (config.async_loading == true) then
		async = vim.loop.new_async(vim.schedule_wrap(async_loader))
	else
		async_loader()
	end

    -- Import tables for the base, syntax, treesitter and lsp
    local editor = material.loadEditor()
    local syntax = material.loadSyntax()
    local treesitter = material.loadTreeSitter()
	local lsp = material.loadLSP()

	-- Apply base colors
    for group, colors in pairs(editor) do
        util.highlight(group, colors)
    end

	-- Apply basic syntax colors
    for group, colors in pairs(syntax) do
        util.highlight(group, colors)
    end

	-- Apply treesitter colors
    for group, colors in pairs(treesitter) do
        util.highlight(group, colors)
    end

	-- Apply lsp colors
	for group, colors in pairs(lsp) do
		util.highlight(group, colors)
	end

	-- If async loading is enabled, send it
    if (config.async_loading == true) then async:send() end
end

return util
