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
    if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

-- Only define Material if it's the active colorshceme
function util.onColorScheme()
  if vim.g.colors_name ~= "material" then
    vim.cmd [[autocmd! Material]]
    vim.cmd [[augroup! Material]]
  end
end

-- Change the background for the terminal and packer windows
util.contrast = function ()
    vim.cmd [[augroup Material]]
    vim.cmd [[  autocmd!]]
    vim.cmd [[  autocmd ColorScheme * lua require("material.util").onColorScheme()]]
	for _, sidebar in ipairs(config.contrast_windows) do
		if sidebar == "terminal" then
			vim.cmd [[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
		else
			vim.cmd([[  autocmd FileType ]] .. sidebar .. [[ setlocal winhighlight=Normal:NormalFloat,SignColumn:SignColumnFloat]])
		end
	end
    vim.cmd [[augroup end]]
end

-- Load the theme
function util.load()
    -- Set the theme environment
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "material"

    -- Load plugins and lsp async
    local async
    async = vim.loop.new_async(vim.schedule_wrap(function ()
        -- imort tables for plugins and lsp
        local plugins = material.loadPlugins()

        if config.disable.term_colors == false then
          material.loadTerminal()
        end

        for group, colors in pairs(plugins) do
            util.highlight(group, colors)
        end

		if type(config.custom_highlights) == 'table' then
			for group, colors in pairs(config.custom_highlights) do
				util.highlight(group, colors)
			end
		end
		util.contrast()
        async:close()

    end))

    -- load base theme
    local editor = material.loadEditor()
    local syntax = material.loadSyntax()
    local treesitter = material.loadTreeSitter()
	local lsp = material.loadLSP()

    for group, colors in pairs(editor) do
        util.highlight(group, colors)
    end

    for group, colors in pairs(syntax) do
        util.highlight(group, colors)
    end

    for group, colors in pairs(treesitter) do
        util.highlight(group, colors)
    end

	for group, colors in pairs(lsp) do
		util.highlight(group, colors)
	end
    async:send()
end

return util
