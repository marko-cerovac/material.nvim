---@diagnostic disable: unused-local, undefined-global
local colors = require('material.colors')
local config = require('material.config').settings

local theme = {}

theme.loadEditor = function ()

    -- Editor highlight groups

	local editor = {
		Normal =				{ fg = e.fg, bg = e.bg }, -- normal text and background color
		NormalNC =				{ fg = e.fg, bg = e.bg_nc }, -- normal text and background color
		NormalFloat =			{ fg = e.fg, bg = b.floating_windows }, -- normal text and background color for floating windows
		NormalContrast =		{ fg = e.fg, bg = e.bg_alt }, -- a help group for contrast fileypes
		FloatBorder =			{ fg = e.border, bg = b.floating_windows }, -- floating window border
		ColorColumn =			{ fg = colors.none, bg = e.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = e.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = e.bg_alt, bg = e.cursor }, -- the character under the cursor
		CursorIM =				{ fg = e.bg_alt, bg = e.cursor }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = m.blue }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = m.yellow, reverse = true }, -- diff mode: Added line
		GitSignsAdd =           { fg = m.yellow, bg = e.bg_sign }, -- diff mode: Added line |diff.txt|
		DiffChange =			{ fg = m.blue }, --  diff mode: Changed line
		GitSignsChange =        { fg = m.blue, bg = e.bg_sign }, -- diff mode: Changed line |diff.txt|
		DiffDelete =			{ fg = m.red, reverse = true }, -- diff mode: Deleted line
		GitSignsDelete =        { fg = m.red, bg = e.bg_sign }, -- diff mode: Deleted line |diff.txt|
		DiffText =				{ fg = m.blue, reverse = true }, -- diff mode: Changed text within a changed line
		ErrorMsg =				{ fg = l.error }, -- error messages
		Folded =				{ fg = e.disabled, italic = true }, -- line used for closed folds
		FoldColumn =			{ fg = m.blue }, -- 'foldcolumn'
		IncSearch =				{ fg = e.title, bg = e.selection, underline = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		LineNr =				{ fg = e.line_numbers, bg = e.bg_num }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr =			{ fg = e.accent, bg = e.bg_num }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen =			{ fg = m.yellow, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg =				{ fg = e.accent }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MoreMsg =				{ fg = e.accent }, -- |more-prompt|
		NonText =				{ fg = e.disabled }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		PmenuSel =				{ fg = e.contrast, bg = e.accent }, -- Popup menu: selected item.
		Question =				{ fg = m.yellow }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine =			{ fg = e.highlight, bg = e.title, reverse = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		qfLineNr =				{ link = "QuickFixLine" }, -- Line numbers for quickfix lists
		Search =				{ fg = e.title, bg = e.selection, bold = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SignColumn =			{ fg = e.fg, bg = e.bg_sign },
		SpecialKey =			{ fg = m.purple }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad =				{ fg = m.red, italic = true, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap =				{ fg = m.blue, italic = true, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal =			{ fg = m.cyan, italic = true, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare =				{ fg = m.purple, italic = true, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine =			{ fg = e.fg, bg = e.active }, -- status line of current window
		StatusLineNC =  		{ fg = e.disabled, bg = e.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		StatusLineTerm =		{ fg = e.fg, bg = e.active }, -- status line of current terminal window
		StatusLineTermNC =		{ fg = e.disabled, bg = e.bg }, -- status lines of not-current terminal windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLineFill =			{ fg = e.fg }, -- tab pages line, where there are no labels
		TablineSel =			{ fg = e.bg, bg = e.accent }, -- tab pages line, active tab page label
		Tabline =				{ fg = e.fg },
		Title =					{ fg = e.title, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
		Visual =				{ fg = colors.none, bg = e.selection }, -- Visual mode selection
		VisualNOS =				{ link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg =			{ fg = m.yellow }, -- warning messages
		Whitespace =			{ fg = e.disabled }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu =				{ fg = m.orange, bold = true }, -- current match in 'wildmenu' completion
		CursorLine =			{ fg = colors.none, bg = e.bg_cur }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		CursorColumn =			{ link = "CursorLine" }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		-- ToolbarLine =			{ fg = e.fg, bg = e.bg_alt },
		-- ToolbarButton =			{ fg = e.fg, bold = true },
		NormalMode =			{ fg = e.accent }, -- Normal mode message in the cmdline
		InsertMode =			{ fg = m.yellow }, -- Insert mode message in the cmdline
		ReplacelMode =			{ fg = m.red }, -- Replace mode message in the cmdline
		VisualMode =			{ fg = m.purple }, -- Visual mode message in the cmdline
		CommandMode =			{ fg = m.gray }, -- Command mode message in the cmdline
		Warnings =				{ fg = m.yellow },

        healthError =           { fg = l.error },
        healthSuccess =         { fg = m.yellow },
        healthWarning =         { fg = m.yellow },

		-- Dashboard
		DashboardShortCut =                     { fg = m.red },
		DashboardHeader =                       { fg = e.comments },
		DashboardCenter =                       { fg = e.accent },
		DashboardFooter =                       { fg = m.yellow, italic = true },

		VertSplit =								{ fg = e.vsplt }, -- The column separating vertically split windows
		WinSeparator = 							{ fg = e.vsplt } -- Lines between window splits

	}

    -- Options:

	--Set End of Buffer lines (~)
	if config.disable.eob_lines then
		editor.EndOfBuffer =			{ fg = e.bg } -- ~ lines at the end of a buffer
	else
		editor.EndOfBuffer =			{ fg = e.disabled } -- ~ lines at the end of a buffer
	end

	-- Nvim-Cmp style options
	if config.contrast.popup_menu == true then
		editor.Pmenu =					{ fg = e.fg, bg = e.border } -- Popup menu: normal item.
		editor.PmenuSbar =				{ bg = e.active } -- Popup menu: scrollbar.
		editor.PmenuThumb =				{ bg = e.fg } -- Popup menu: Thumb of the scrollbar.
	else
		editor.Pmenu =					{ fg = e.fg, bg = e.contrast } -- Popup menu: normal item.
		editor.PmenuSbar =				{ bg = e.contrast } -- Popup menu: scrollbar.
		editor.PmenuThumb =				{ bg = e.selection } -- Popup menu: Thumb of the scrollbar.
	end


	return editor
end

theme.loadTerminal = function ()
	vim.g.terminal_color_0 = m.black
	vim.g.terminal_color_1 = m.darkgreen
	vim.g.terminal_color_2 = colors.darkgreen
	vim.g.terminal_color_3 = m.darkyellow
	vim.g.terminal_color_4 = m.darkblue
	vim.g.terminal_color_5 = m.darkpurple
	vim.g.terminal_color_6 = m.darkcyan
	vim.g.terminal_color_7 = m.white
	vim.g.terminal_color_8 = e.disabled
	vim.g.terminal_color_9 = m.red
	vim.g.terminal_color_10 = m.yellow
	vim.g.terminal_color_11 = m.yellow
	vim.g.terminal_color_12 = m.blue
	vim.g.terminal_color_13 = m.purple
	vim.g.terminal_color_14 = m.cyan
	vim.g.terminal_color_15 = m.white
end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

	local treesitter = {
		TSAttribute =               { fg = m.yellow }, -- (unstable) TODO: docs
		TSBoolean=                  { link = "Boolean" }, -- For booleans.
		TSCharacter=                { link = "Character" }, -- For characters.
		TSComment=                  { link = "Comment" }, -- For comment blocks.
		TSConditional =             { link = "Keyword" }, -- For keywords related to conditionnals.
		TSConstructor =             { fg = m.blue }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant =                { link = "Constant" }, -- For constants
		TSConstBuiltin =            { fg = m.orange }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro =              { fg = m.cyan }, -- For constants that are defined by macros: `NULL` in C.
		TSError =                   { fg = l.error }, -- For syntax/parser errors.
		TSException =               { fg = m.red }, -- For exception related keywords.
		TSField =                   { fg = e.fg }, -- For fields.
		TSFloat =                   { fg = m.orange }, -- For floats.
		TSFunction =                { link = "Function" }, -- For fuction (calls and definitions).
		TSFuncBuiltin =             { link = "Function" }, -- For builtin functions: `table.insert` in Lua.
		TSFuncMacro =               { fg = m.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude =                 { fg = m.cyan }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSKeyword =                 { link = "Statement" }, -- For keywords that don't fall in previous categories.
		TSKeywordFunction =         { link = "Statement" }, -- For keywords used to define a fuction.
		TSKeywordOperator =			{ fg = m.purple }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
		TSKeywordReturn =			{ fg = m.cyan }, -- return keyword
		TSLabel =                   { fg = m.red }, -- For labels: `label:` in C and `:label:` in Lua.
		TSMethod =                  { link = "Function" }, -- For method calls and definitions.
		TSNamespace =               { fg = m.yellow }, -- For identifiers referring to modules and namespaces.
		TSNumber =                  { fg = m.orange }, -- For all numbers
		TSOperator =                { fg = m.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter =               { fg = m.paleblue }, -- For parameters of a function.
		TSParameterReference =      { fg = m.paleblue }, -- For references to parameters of a function.
		TSProperty =                { fg = m.gray }, -- Same as `TSField`,accesing for struct members in C.
		TSPunctDelimiter =          { fg = m.cyan }, -- For delimiters ie: `.`
		TSPunctBracket =            { fg = m.cyan }, -- For brackets and parens.
		TSPunctSpecial =            { fg = m.cyan }, -- For special punctutation that does not fall in the catagories before.
		TSRepeat =                  { link = "Keyword" }, -- For keywords related to loops.
	    TSString =                  { link = "String" }, -- For strings.
		TSStringRegex =             { fg = m.yellow }, -- For regexes.
		TSStringEscape =            { fg = e.fg_alt }, -- For escape characters within a string.
		TSSymbol =                  { fg = m.yellow }, -- For identifiers referring to symbols or atoms.
		TSStrong =					{ fg = m.paleblue, bold = true }, -- Text to be represented in bold.
		TSType =                    { fg = m.purple }, -- For types.
		TSTypeBuiltin =             { fg = m.red }, -- For builtin types.
		TSTag =                     { fg = m.red }, -- Tags like html tag names.
		TSTagDelimiter =            { fg = m.cyan }, -- Tag delimiter like `<` `>` `/`
		TSTagAttribute =			{ fg = m.gray }, -- HTML tag attributes.
		TSText =                    { fg = e.fg }, -- For strings considered text in a markup language.
		TSTextReference =           { fg = m.yellow }, -- FIXME
		TSVariable =                { link = "Identifier" }, -- Any variable name that does not have another highlight.
		TSVariableBuiltin =         { link = "Identifier" }, -- Variable names that are defined by the languages, like `this` or `self`.
		TSEmphasis =                { fg = m.paleblue }, -- For text to be represented with emphasis.
		TSUnderline =               { fg = e.fg, underline = true }, -- For text to be represented with an underline.
		-- TSStrike =                  { fg = e.fg,, strikethrough = true}, -- For strikethrough text.
		TSTitle =                   { fg = e.title, bold = true }, -- Text that is part of a title.
		TSLiteral =                 { fg = e.fg }, -- Literal text.
		TSURI =                     { fg = e.link }, -- Any URI like a link or email.
		TSMath =					{ fg = m.blue }, -- Math environments like LaTeX's `$ ... $`
		TSDanger =					{ fg = l.error }, -- Text representation of a danger note.
		--TSNone =                    { }, -- TODO: docs
	}

	return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

	local lsp = {
		-- Nvim 0.6. and up
		DiagnosticError =                       { fg = l.error },
		DiagnosticVirtualTextError = 			{ fg = l.error },
		DiagnosticFloatingError = 				{ fg = l.error },
		DiagnosticSignError = 					{ fg = l.error, bg = e.bg_sign },
		DiagnosticUnderlineError = 				{ undercurl = true, sp = l.error },
		DiagnosticWarn =                     	{ fg = m.yellow },
		DiagnosticVirtualTextWarn  = 			{ fg = m.yellow },
		DiagnosticFloatingWarn = 				{ fg = m.yellow },
		DiagnosticSignWarn = 					{ fg = m.yellow, bg = e.bg_sign },
		DiagnosticUnderlineWarn = 				{ undercurl = true, sp = m.yellow },
		DiagnosticInformation =                 { fg = m.paleblue },
		DiagnosticVirtualTextInfo = 			{ fg = m.paleblue },
		DiagnosticFloatingInfo = 				{ fg = m.paleblue },
		DiagnosticSignInfo = 					{ fg = m.paleblue, bg = e.bg_sign },
		DiagnosticUnderlineInfo = 				{ undercurl = true, sp = m.paleblue },
		DiagnosticHint =                        { fg = m.purple },
		DiagnosticVirtualTextHint = 			{ fg = m.purple },
		DiagnosticFloatingHint = 				{ fg = m.purple },
		DiagnosticSignHint = 					{ fg = m.purple, bg = e.bg_sign },
		DiagnosticUnderlineHint  = 				{ undercurl = true, sp = m.purple },
		LspReferenceText = 						{ bg = e.selection }, -- used for highlighting "text" references
		LspReferenceRead = 						{ link = "LspReferenceText" }, -- used for highlighting "read" references
		LspReferenceWrite = 					{ link = "LspReferenceText" }, -- used for highlighting "write" references
	}

	return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

	local plugins = {
		-- Symbols outline
		FocusedSymbol = 						{ bg = e.selection },
		SymbolsOutlineConnector = 				{ fg = e.border },

		-- BufferLine
		BufferLineIndicatorSelected =           { fg = e.accent },
		BufferLineFill =                        { bg = e.bg },

		-- Fern
		FernBranchText =						{ fg = m.blue },
	}

	-- Trouble
	if config.plugins.trouble then
		plugins.TroubleText =                        	{ fg = e.fg_alt, bg = b.sidebars }
		plugins.TroubleCount =                       	{ fg = m.purple, bg = b.sidebars }
		plugins.TroubleNormal =                      	{ fg = e.fg, bg = b.sidebars }
		plugins.TroubleSignError = 						{ fg = l.error, bg = b.sidebars}
		plugins.TroubleSignWarning = 					{ fg = m.yellow, bg = b.sidebars}
		plugins.TroubleSignInformation = 				{ fg = m.paleblue, bg = b.sidebars}
		plugins.TroubleSignHint = 						{ fg = m.purple, bg = b.sidebars}
		plugins.TroubleFoldIcon = 						{ fg = e.accent, bg = b.sidebars }
		plugins.TroubleIndent = 						{ fg = e.border, bg = b.sidebars }
		plugins.TroubleLocation = 						{ fg = e.disabled, bg = b.sidebars }
	end

	-- Nvim-Cmp
	if config.plugins.nvim_cmp then
		plugins.CmpItemAbbrMatch =						{ fg = m.paleblue, bold = true }
		plugins.CmpItemKindText =						{ fg = e.title }
		plugins.CmpItemKindMethod =						{ fg = m.blue }
		plugins.CmpItemKindFunction =					{ fg = m.blue }
		plugins.CmpItemKindContructor =					{ fg = m.purple }
		plugins.CmpItemKindField =						{ fg = m.cyan }
		plugins.CmpItemKindVariable =					{ fg = m.paleblue }
		plugins.CmpItemKindConstant =					{ fg = m.paleblue }
		plugins.CmpItemKindClass =						{ fg = m.yellow }
		plugins.CmpItemKindInterface =					{ fg = m.yellow }
		plugins.CmpItemKindModule =						{ fg = m.red }
		plugins.CmpItemKindProperty =					{ fg = m.purple }
		plugins.CmpItemKindKeyword =					{ fg = m.cyan }
		plugins.CmpItemKindFile =						{ fg = e.title }
		plugins.CmpItemKindFolder =						{ fg = e.title }
		plugins.CmpItemKindSnippet =					{ fg = m.yellow }
	end

	-- Neogit
	if config.plugins.neogit then
		plugins.NeogitBranch =                          { fg = m.paleblue }
		plugins.NeogitRemote =                          { fg = m.purple }
		plugins.NeogitHunkHeader =                      { fg = e.fg, bg = e.highlight }
		plugins.NeogitHunkHeaderHighlight =             { fg = m.blue, bg = e.contrast }
		plugins.NeogitDiffContextHighlight =            { fg = e.fg_alt, bg = e.contrast }
		plugins.NeogitDiffDeleteHighlight =             { fg = m.red }
		plugins.NeogitDiffAddHighlight =                { fg = m.yellow }
	end

	-- GitSigns
	if config.plugins.gitsigns then
		plugins.GitSignsAddNr =                         { fg = m.yellow, bg =e.bg_num } -- diff mode: Added line |diff.txt|
		plugins.GitSignsAddLn =                         { fg = m.yellow } -- diff mode: Added line |diff.txt|
		plugins.GitSignsChangeNr =                      { fg = m.blue, bg =e.bg_num } -- diff mode: Changed line |diff.txt|
		plugins.GitSignsChangeLn =                      { fg = m.blue } -- diff mode: Changed line |diff.txt|
		plugins.GitSignsDeleteNr =                      { fg = m.red, bg =e.bg_num } -- diff mode: Deleted line |diff.txt|
		plugins.GitSignsDeleteLn =                      { fg = m.red } -- diff mode: Deleted line |diff.txt|
	end

	-- GitGutter
	if config.plugins.git_gutter then
		plugins.GitGutterAdd =                          { fg = m.yellow } -- diff mode: Added line |diff.txt|
		plugins.GitGutterChange =                       { fg = m.blue } -- diff mode: Changed line |diff.txt|
		plugins.GitGutterDelete =                       { fg = m.red } -- diff mode: Deleted line |diff.txt|
	end

	-- Telescope
	if config.plugins.telescope then
		plugins.TelescopeNormal =                       { fg = e.fg, bg = b.floating_windows }
		plugins.TelescopePromptBorder =                 { fg = e.border, bg = b.floating_windows }
		plugins.TelescopeResultsBorder =                { link = "TelescopePromptBorder" }
		plugins.TelescopePreviewBorder =                { link = "TelescopePromptBorder" }
		plugins.TelescopeSelectionCaret =               { fg = m.yellow, bg = e.selection }
		plugins.TelescopeSelection =                    { fg = m.yellow, bg = e.selection }
		plugins.TelescopeMultiSelection =               { fg = m.yellow }
		plugins.TelescopeMatching =                     { bold = true }
	end

	-- NvimTree
	if config.plugins.nvim_tree then
		plugins.NvimTreeNormal =						{ fg = e.fg, bg = b.sidebars }
		plugins.NvimTreeNormalNC =						{ link = "NvimTreeNormal" }
		plugins.NvimTreeRootFolder =                    { fg = e.accent, bg = b.sidebars }
		plugins.NvimTreeFolderName=                     { fg = m.blue, bold = true }
		plugins.NvimTreeFolderIcon=                     { link = "NvimTreeFolderName" }
		plugins.NvimTreeEmptyFolderName=                { fg = m.gray }
		plugins.NvimTreeOpenedFolderName=               { fg = m.yellow, bold = true }
		plugins.NvimTreeIndentMarker =                  { fg = e.disabled }
		plugins.NvimTreeGitDirty =                      { fg = m.blue }
		plugins.NvimTreeGitNew =                        { fg = m.yellow }
		plugins.NvimTreeGitStaged =                     { fg = e.fg }
		plugins.NvimTreeGitDeleted =                    { fg = m.red }
		plugins.NvimTreeOpenedFile =					{ link = "NvimTreeGitNew" }
		plugins.NvimTreeImageFile =                     { fg = m.yellow }
		plugins.NvimTreeMarkdownFile =                  { fg = m.pink }
		plugins.NvimTreeExecFile =                      { link = "NvimTreeGitNew" }
		plugins.NvimTreeSpecialFile =                   { fg = m.purple }
	end

	-- Sidebar.nvim
	if config.plugins.sidebar_nvim then
		plugins.SidebarNvimNormal =						{ fg = e.fg }
		plugins.SidebarNvimSectionTitle	=				{ fg = e.accent }
		plugins.SidebarNvimSectionSeparator =			{ fg = e.border }
		plugins.SidebarNvimLabel =						{ fg = m.gray }
	end

	-- LspSaga
	if config.plugins.lsp_saga then
		plugins.LspFloatWinNormal =                     { fg = e.fg, bg = b.floating_windows }
		plugins.LspFloatWinBorder =                     { link = "FloatBorder" }
		plugins.LspSagaDiagnosticBorder =				{ link = "FloatBorder" }
		plugins.LspSagaDiagnosticHeader =				{ fg = m.blue }
		plugins.LspSagaDiagnosticTruncateLine =			{ link = "FloatBorder" }
		plugins.LspLinesDiagBorder =					{ link = "FloatBorder" }
		plugins.ProviderTruncateLine =					{ link = "FloatBorder" }
		plugins.LspSagaShTruncateLine =					{ link = "FloatBorder" }
		plugins.LspSagaDocTruncateLine =				{ link = "FloatBorder" }
		plugins.LineDiagTruncateLine =					{ link = "FloatBorder" }
		plugins.LspSagaBorderTitle =                    { fg = m.blue }
		plugins.LspSagaHoverBorder =                    { link = "FloatBorder" }
		plugins.LspSagaRenameBorder =                   { link = "FloatBorder" }
		plugins.LspSagaRenamePromptPrefix =             { fg = m.yellow }
		plugins.LspSagaDefPreviewBorder =               { link = "FloatBorder" }
		plugins.LspSagaCodeActionTitle =                { fg = m.paleblue }
		plugins.LspSagaCodeActionContent =              { fg = m.purple }
		plugins.LspSagaCodeActionBorder =               { link = "FloatBorder" }
		plugins.LspSagaCodeActionTruncateLine =			{ link = "FloatBorder" }
		plugins.LspSagaSignatureHelpBorder =            { link = "FloatBorder" }
		plugins.LspSagaFinderSelection =                { link = "LspSagaRenamePromptPrefix" }
		plugins.LspSagaLspFinderBorder =				{ link = "FloatBorder" }
		plugins.LspSagaAutoPreview =					{ link = "LspFloatWinBorder" }
		plugins.ReferencesCount =                       { link = "LspSagaCodeActionContent" }
		plugins.DefinitionCount =                       { link = "LspSagaCodeActionContent" }
		plugins.DefinitionPreviewTitle =				{ link = "LspSagaRenamePromptPrefix" }
		plugins.DefinitionIcon =                        { fg = m.blue }
		plugins.ReferencesIcon =                        { link = "DefinitionIcon" }
		plugins.TargetWord =                            { fg = m.cyan }
	end

	-- Nvim dap and dap-UI
	if config.plugins.nvim_dap then
		plugins.DapBreakpoint =                         { fg = m.red }
		plugins.DapStopped =                            { fg = m.yellow }

		plugins.DapUIFloatBorder =						{ fg = e.border, bg = e.bg }
		plugins.DapUIDecoration =						{ fg = m.blue }
		-- plugins.DapUIVariable = 						{ fg = e.fg }
	end

	-- nvim-navic
	if config.plugins.nvim_navic then
		plugins.NavicIconsFile =						{ fg = e.title, bg = e.selection }
		plugins.NavicIconsModule =						{ link = "NavicIconsFile" }
		plugins.NavicIconsNamespace =					{ fg = m.yellow, bg = e.selection }
		plugins.NavicIconsPackage =						{ link = "NavicIconsFile" }
		plugins.NavicIconsClass =						{ link = "NavicIconsModule" }
		plugins.NavicIconsMethod =						{ fg = m.blue, bg = e.selection }
		plugins.NavicIconsProperty =					{ fg = m.purple, bg = e.selection }
		plugins.NavicIconsField =						{ fg = m.cyan, bg = e.selection }
		plugins.NavicIconsConstructor =					{ link = "NavicIconsProperty"}
		plugins.NavicIconsEnum =						{ link = "NavicIconsNamespace" }
		plugins.NavicIconsInterface =					{ link = "NavicIconsModule" }
		plugins.NavicIconsFunction =					{ link = "NavicIconsMethod" }
		plugins.NavicIconsVariable =					{ fg = m.paleblue, bg = e.selection }
		plugins.NavicIconsConstant =					{ link = "NavicIconsVariable" }
		plugins.NavicIconsString =						{ fg = m.orange, bg = e.selection }
		plugins.NavicIconsNumber =						{ link = "NavicIconsString" }
		plugins.NavicIconsBoolean =						{ fg = m.yellow, bg = e.selection }
		plugins.NavicIconsArray =						{ link = "NavicIconsString" }
		plugins.NavicIconsObject =						{ link = "NavicIconsString" }
		plugins.NavicIconsKey =							{ link = "NavicIconsField" }
		plugins.NavicIconsNull =						{ fg = m.red, bg = e.selection }
		plugins.NavicIconsEnumMember =					{ link = "NavicIconsNamespace" }
		plugins.NavicIconsStruct =						{ link = "NavicIconsModule" }
		plugins.NavicIconsEvent =						{ link = "NavicIconsNull" }
		plugins.NavicIconsOperator =					{ link = "NavicIconsNull" }
		plugins.NavicIconsTypeParameter =				{ link = "NavicIconsBoolean" }
		plugins.NavicText =								{ fg = e.fg, bg = e.selection }
		plugins.NavicSeparator =						{ link = "NavicText" }
	end

	-- WhichKey
	if config.plugins.which_key then
		plugins.WhichKey =                              { fg = e.accent, bold = true }
		plugins.WhichKeyGroup =                         { fg = m.gray }
		plugins.WhichKeyDesc =                          { fg = e.fg, italic = true }
		plugins.WhichKeySeparator =                     { fg = m.red }
		plugins.WhichKeyFloat =                         { bg = b.floating_windows }
	end

	-- Hop
	if config.plugins.hop then
		plugins.HopNextKey =							{ fg = e.accent, bold = true }
		plugins.HopNextKey1 =							{ fg = m.purple, bold = true }
		plugins.HopNextKey2 =							{ fg = m.blue }
		plugins.HopUnmatched =							{ fg = e.comments }
	end

	-- Sneak
	if config.plugins.sneak then
		plugins.Sneak =                                 { fg = e.bg, bg = e.accent }
		plugins.SneakScope =                            { bg = e.selection }
	end

	-- Indent Blankline
	if config.plugins.indent_blankline then
		plugins.IndentBlanklineChar =                   { fg = e.border }
		plugins.IndentBlanklineContextChar =            { fg = e.disabled }
	end

	-- Illuminate
	if config.plugins.nvim_illuminate then
		plugins.illuminatedWord =						{ bg = colors.highight, italic = true }
		plugins.illuminatedCurWord =					{ bg = colors.highight, underline = true }
	end

	if config.plugins.mini then

		-- Mini
		plugins.MiniCompletionActiveParameter = { underline = true }

		plugins.MiniCursorword = { underline = true }
		plugins.MiniCursorwordCurrent = { underline = true }

		plugins.MiniIndentscopeSymbol = { fg = m.cyan }
		plugins.MiniIndentscopePrefix = { nocombine = true } -- Make it invisible

		plugins.MiniJump = { fg = e.bg, bg = e.accent }

		plugins.MiniJump2dSpot = { fg = e.accent, bold = true, nocombine = true }

		plugins.MiniStarterCurrent = { nocombine = true }
		plugins.MiniStarterFooter = { fg = m.yellow, italic = true }
		plugins.MiniStarterHeader = { fg = e.comments }
		plugins.MiniStarterInactive = { link = "Comment" }
		plugins.MiniStarterItem = { link = "Normal" }
		plugins.MiniStarterItemBullet = { fg = e.border }
		plugins.MiniStarterItemPrefix = { fg = m.yellow }
		plugins.MiniStarterSection = {  fg = m.cyan }
		plugins.MiniStarterQuery = { fg = m.paleblue }

		plugins.MiniStatuslineDevinfo = { fg = e.fg, bg = e.active }
		plugins.MiniStatuslineFileinfo = { link = "MiniStatuslineDevinfo" }
		plugins.MiniStatuslineFilename = { fg = e.disabled, bg = e.bg }
		plugins.MiniStatuslineInactive = { link = "MiniStatuslineFilename" }
		plugins.MiniStatuslineModeCommand = { fg = e.bg, bg = m.yellow, bold = true }
		plugins.MiniStatuslineModeInsert = { fg = e.bg, bg = m.yellow, bold = true }
		plugins.MiniStatuslineModeNormal = { fg = e.bg, bg = e.accent, bold = true }
		plugins.MiniStatuslineModeOther = { fg = e.bg, bg = m.cyan, bold = true }
		plugins.MiniStatuslineModeReplace = { fg = e.bg, bg = m.red, bold = true }
		plugins.MiniStatuslineModeVisual = { fg = e.bg, bg = m.purple, bold = true }

		plugins.MiniSurround = { link = "IncSearch" }

		plugins.MiniTablineCurrent = { fg = e.bg, bg = e.accent, bold = true }
		plugins.MiniTablineFill = { link = "TabLineFill" }
		plugins.MiniTablineHidden = { fg = e.fg, bg = e.bg }
		plugins.MiniTablineModifiedCurrent = { fg = e.accent, bg = e.bg, bold = true }
		plugins.MiniTablineModifiedHidden = { fg = e.bg, bg = e.fg }
		plugins.MiniTablineModifiedVisible = { fg = e.accent, bg = e.bg }
		plugins.MiniTablineTabpagesection = { fg = e.title, bg = e.selection, bold = true }
		plugins.MiniTablineVisible = { fg = e.bg, bg = e.accent }

		plugins.MiniTestEmphasis = { bold = true }
		plugins.MiniTestFail = { fg = m.red, bold = true }
		plugins.MiniTestPass = { fg = m.yellow, bold = true }

		plugins.MiniTrailspace = { bg = m.red }
	end

	return plugins

end
