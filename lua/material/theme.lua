local colors = require('material.colors')
local config = require('material.config').options

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = colors.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = colors.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = colors.purple }, -- struct, union, enum, etc.
		Comment =					{ fg = colors.comments, italic = config.italics.comments }, -- italic comments
		SpecialComment =			{ link = "Comment" }, -- special things inside a comment
		Conditional =				{ fg = colors.purple, italic = config.italics.keywords }, -- italic if, then, else, endif, switch, etc.
		Constant =					{ fg = colors.yellow }, -- any constant
		Character =					{ fg = colors.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = colors.orange }, -- a number constant: 5
		Boolean =					{ fg = colors.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = colors.orange }, -- a floating point constant: 2.3e10
		Function =					{ fg = colors.blue, italic = config.italics.functions }, -- italic funtion names
		Identifier =				{ fg = colors.fg, italic = config.italics.variables }; -- any variable name
		Statement =					{ fg = colors.cyan }, -- any statement
		Keyword =					{ fg = colors.purple, italic = config.italics.keywords }, -- italic for, do, while, etc.
		Label =						{ fg = colors.purple }, -- case, default, etc.
		Operator =					{ fg = colors.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = colors.red }, -- try, catch, throw
		PreProc =					{ fg = colors.purple }, -- generic Preprocessor
		Include =					{ fg = colors.blue }, -- preprocessor #include
		Define =					{ fg = colors.pink }, -- preprocessor #define
		Macro =						{ fg = colors.cyan }, -- same as Define
		Typedef =					{ fg = colors.red }, -- A typedef
		PreCondit =					{ fg = colors.cyan }, -- preprocessor #if, #else, #endif, etc.
		Repeat =					{ fg = colors.purple, italic = config.italics.keywords }, -- italic any other keyword
		String =					{ fg = colors.green, italic= config.italics.strings }, -- any string
		Special =					{ fg = colors.red }, -- any special symbol
		SpecialChar =				{ fg = colors.disabled }, -- special character in a constant
		Tag =						{ fg = colors.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = colors.cyan }, -- character that needs attention like , or .
		Debug =						{ fg = colors.red }, -- debugging statements
		Underlined =				{ fg = colors.link, underline = true }, -- text that stands out, HTML links
		Ignore =					{ fg = colors.disabled }, -- left blank, hidden
		Error =						{ fg = colors.error, bold = true, underline = true }, -- any erroneous construct
		Todo =						{ fg = colors.yellow, bold = true, italic = true }, -- anything that needs extra attention; mostly the keywords TODO HACK FIXME and XXX

		htmlLink =					{ fg = colors.link, underline = true },
		htmlH1 =					{ fg = colors.cyan, bold = true },
		htmlH2 =					{ fg = colors.red, bold = true },
		htmlH3 =					{ fg = colors.green, bold = true },
		htmlH4 =					{ fg = colors.yellow, bold = true },
		htmlH5 =					{ fg = colors.purple, bold = true },
		markdownH1 =				{ fg = colors.cyan, bold = true },
		markdownH2 =				{ fg = colors.red, bold = true },
		markdownH3 =				{ fg = colors.green, bold = true },
		markdownH1Delimiter =		{ fg = colors.cyan },
		markdownH2Delimiter =		{ fg = colors.red },
		markdownH3Delimiter =		{ fg = colors.green },
	}

	return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		Normal =				{ fg = colors.fg, bg = colors.bg }, -- normal text and background color
		NormalNC =				{ fg = colors.fg, bg = colors.bg_nc }, -- normal text and background color
		NormalFloat =			{ fg = colors.fg, bg = colors.float }, -- normal text and background color for floating windows
		NormalContrast =		{ fg = colors.fg, bg = colors.bg_alt }, -- a help group for contrast fileypes
		FloatBorder =			{ fg = colors.border, bg = colors.float }, -- floating window border
		ColorColumn =			{ fg = colors.none, bg = colors.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = colors.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = colors.bg_alt, bg = colors.cursor }, -- the character under the cursor
		CursorIM =				{ fg = colors.bg_alt, bg = colors.cursor }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = colors.blue }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = colors.green }, -- diff mode: Added line
		DiffChange =			{ fg = colors.blue }, --  diff mode: Changed line
		DiffDelete =			{ fg = colors.red }, -- diff mode: Deleted line
		DiffText =				{ fg = colors.fg, bg = colors.bg_alt }, -- diff mode: Changed text within a changed line
		ErrorMsg =				{ fg = colors.error }, -- error messages
		Folded =				{ fg = colors.disabled, italic = true }, -- line used for closed folds
		FoldColumn =			{ fg = colors.blue }, -- 'foldcolumn'
		IncSearch =				{ fg = colors.title, bg = colors.selection, underline = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		LineNr =				{ fg = colors.line_numbers, bg = colors.bg_num }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr =			{ fg = colors.accent, bg = colors.bg_num }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen =			{ fg = colors.yellow, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg =				{ fg = colors.accent }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MoreMsg =				{ fg = colors.accent }, -- |more-prompt|
		NonText =				{ fg = colors.disabled }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		PmenuSel =				{ fg = colors.contrast, bg = colors.accent }, -- Popup menu: selected item.
		Question =				{ fg = colors.green }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine =			{ fg = colors.highlight, bg = colors.title, reverse = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		qfLineNr =				{ link = "QuickFixLine" }, -- Line numbers for quickfix lists
		Search =				{ fg = colors.title, bg = colors.selection, bold = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SignColumn =			{ fg = colors.fg, bg = colors.bg_sign },
		SpecialKey =			{ fg = colors.purple }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad =				{ fg = colors.red, italic = true, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap =				{ fg = colors.blue, italic = true, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal =			{ fg = colors.cyan, italic = true, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare =				{ fg = colors.purple, italic = true, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine =			{ fg = colors.fg, bg = colors.active }, -- status line of current window
		StatusLineNC =  		{ fg = colors.disabled, bg = colors.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		StatusLineTerm =		{ fg = colors.fg, bg = colors.active }, -- status line of current terminal window
		StatusLineTermNC =		{ fg = colors.disabled, bg = colors.bg }, -- status lines of not-current terminal windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLineFill =			{ fg = colors.fg }, -- tab pages line, where there are no labels
		TablineSel =			{ fg = colors.bg, bg = colors.accent }, -- tab pages line, active tab page label
		Tabline =				{ fg = colors.fg },
		Title =					{ fg = colors.title, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
		Visual =				{ fg = colors.none, bg = colors.selection }, -- Visual mode selection
		VisualNOS =				{ link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg =			{ fg = colors.yellow }, -- warning messages
		Whitespace =			{ fg = colors.disabled }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu =				{ fg = colors.orange, bold = true }, -- current match in 'wildmenu' completion
		CursorLine =			{ fg = colors.none, bg = colors.bg_cur }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		CursorColumn =			{ link = "CursorLine" }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		-- ToolbarLine =			{ fg = colors.fg, bg = colors.bg_alt },
		-- ToolbarButton =			{ fg = colors.fg, bold = true },
		NormalMode =			{ fg = colors.accent }, -- Normal mode message in the cmdline
		InsertMode =			{ fg = colors.green }, -- Insert mode message in the cmdline
		ReplacelMode =			{ fg = colors.red }, -- Replace mode message in the cmdline
		VisualMode =			{ fg = colors.purple }, -- Visual mode message in the cmdline
		CommandMode =			{ fg = colors.gray }, -- Command mode message in the cmdline
		Warnings =				{ fg = colors.yellow },

        healthError =           { fg = colors.error },
        healthSuccess =         { fg = colors.green },
        healthWarning =         { fg = colors.yellow },

		-- Dashboard
		DashboardShortCut =                     { fg = colors.red },
		DashboardHeader =                       { fg = colors.comments },
		DashboardCenter =                       { fg = colors.accent },
		DashboardFooter =                       { fg = colors.green, italic = true },

		VertSplit =								{ fg = colors.vsp }, -- The column separating vertically split windows
		WinSeparator = 							{ fg = colors.vsp } -- Lines between window splits

	}

    -- Options:

	--Set End of Buffer lines (~)
	if config.disable.eob_lines then
		editor.EndOfBuffer =			{ fg = colors.bg } -- ~ lines at the end of a buffer
	else
		editor.EndOfBuffer =			{ fg = colors.disabled } -- ~ lines at the end of a buffer
	end

	-- Nvim-Cmp style options
	if config.contrast.popup_menu == true then
		editor.Pmenu =					{ fg = colors.fg, bg = colors.border } -- Popup menu: normal item.
		editor.PmenuSbar =				{ bg = colors.active } -- Popup menu: scrollbar.
		editor.PmenuThumb =				{ bg = colors.fg } -- Popup menu: Thumb of the scrollbar.
	else
		editor.Pmenu =					{ fg = colors.fg, bg = colors.contrast } -- Popup menu: normal item.
		editor.PmenuSbar =				{ bg = colors.contrast } -- Popup menu: scrollbar.
		editor.PmenuThumb =				{ bg = colors.selection } -- Popup menu: Thumb of the scrollbar.
	end


	return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = colors.black
	vim.g.terminal_color_1 = colors.darkred
	vim.g.terminal_color_2 = colors.darkgreen
	vim.g.terminal_color_3 = colors.darkyellow
	vim.g.terminal_color_4 = colors.darkblue
	vim.g.terminal_color_5 = colors.darkpurple
	vim.g.terminal_color_6 = colors.darkcyan
	vim.g.terminal_color_7 = colors.white
	vim.g.terminal_color_8 = colors.disabled
	vim.g.terminal_color_9 = colors.red
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_11 = colors.yellow
	vim.g.terminal_color_12 = colors.blue
	vim.g.terminal_color_13 = colors.purple
	vim.g.terminal_color_14 = colors.cyan
	vim.g.terminal_color_15 = colors.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

	local treesitter = {
		TSAttribute =               { fg = colors.yellow }, -- (unstable) TODO: docs
		TSBoolean=                  { link = "Boolean" }, -- For booleans.
		TSCharacter=                { link = "Character" }, -- For characters.
		TSComment=                  { link = "Comment" }, -- For comment blocks.
		TSConditional =             { link = "Keyword" }, -- For keywords related to conditionnals.
		TSConstructor =             { fg = colors.blue }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant =                { link = "Constant" }, -- For constants
		TSConstBuiltin =            { fg = colors.orange }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro =              { fg = colors.cyan }, -- For constants that are defined by macros: `NULL` in C.
		TSError =                   { fg = colors.error }, -- For syntax/parser errors.
		TSException =               { fg = colors.red }, -- For exception related keywords.
		TSField =                   { fg = colors.fg }, -- For fields.
		TSFloat =                   { fg = colors.orange }, -- For floats.
		TSFunction =                { link = "Function" }, -- For fuction (calls and definitions).
		TSFuncBuiltin =             { link = "Function" }, -- For builtin functions: `table.insert` in Lua.
		TSFuncMacro =               { fg = colors.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude =                 { fg = colors.cyan }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSKeyword =                 { link = "Statement" }, -- For keywords that don't fall in previous categories.
		TSKeywordFunction =         { link = "Statement" }, -- For keywords used to define a fuction.
		TSKeywordOperator =			{ fg = colors.purple }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
		TSKeywordReturn =			{ fg = colors.cyan }, -- return keyword
		TSLabel =                   { fg = colors.red }, -- For labels: `label:` in C and `:label:` in Lua.
		TSMethod =                  { link = "Function" }, -- For method calls and definitions.
		TSNamespace =               { fg = colors.yellow }, -- For identifiers referring to modules and namespaces.
		TSNumber =                  { fg = colors.orange }, -- For all numbers
		TSOperator =                { fg = colors.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter =               { fg = colors.paleblue }, -- For parameters of a function.
		TSParameterReference =      { fg = colors.paleblue }, -- For references to parameters of a function.
		TSProperty =                { fg = colors.gray }, -- Same as `TSField`,accesing for struct members in C.
		TSPunctDelimiter =          { fg = colors.cyan }, -- For delimiters ie: `.`
		TSPunctBracket =            { fg = colors.cyan }, -- For brackets and parens.
		TSPunctSpecial =            { fg = colors.cyan }, -- For special punctutation that does not fall in the catagories before.
		TSRepeat =                  { link = "Keyword" }, -- For keywords related to loops.
	    TSString =                  { link = "String" }, -- For strings.
		TSStringRegex =             { fg = colors.yellow }, -- For regexes.
		TSStringEscape =            { fg = colors.text }, -- For escape characters within a string.
		TSSymbol =                  { fg = colors.yellow }, -- For identifiers referring to symbols or atoms.
		TSStrong =					{ fg = colors.paleblue, bold = true }, -- Text to be represented in bold.
		TSType =                    { fg = colors.purple }, -- For types.
		TSTypeBuiltin =             { fg = colors.red }, -- For builtin types.
		TSTag =                     { fg = colors.red }, -- Tags like html tag names.
		TSTagDelimiter =            { fg = colors.cyan }, -- Tag delimiter like `<` `>` `/`
		TSTagAttribute =			{ fg = colors.gray }, -- HTML tag attributes.
		TSText =                    { fg = colors.fg }, -- For strings considered text in a markup language.
		TSTextReference =           { fg = colors.yellow }, -- FIXME
		TSVariable =                { link = "Identifier" }, -- Any variable name that does not have another highlight.
		TSVariableBuiltin =         { link = "Identifier" }, -- Variable names that are defined by the languages, like `this` or `self`.
		TSEmphasis =                { fg = colors.paleblue }, -- For text to be represented with emphasis.
		TSUnderline =               { fg = colors.fg, underline = true }, -- For text to be represented with an underline.
		-- TSStrike =                  { fg = colors.fg,, strikethrough = true}, -- For strikethrough text.
		TSTitle =                   { fg = colors.title, bold = true }, -- Text that is part of a title.
		TSLiteral =                 { fg = colors.fg }, -- Literal text.
		TSURI =                     { fg = colors.link }, -- Any URI like a link or email.
		TSMath =					{ fg = colors.blue }, -- Math environments like LaTeX's `$ ... $`
		TSDanger =					{ fg = colors.error }, -- Text representation of a danger note.
		--TSNone =                    { }, -- TODO: docs
	}

	return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

	local lsp = {
		-- Nvim 0.6. and up
		DiagnosticError =                       { fg = colors.error },
		DiagnosticVirtualTextError = 			{ fg = colors.error },
		DiagnosticFloatingError = 				{ fg = colors.error },
		DiagnosticSignError = 					{ fg = colors.error, bg = colors.bg_sign },
		DiagnosticUnderlineError = 				{ undercurl = true, sp = colors.error },
		DiagnosticWarn =                     	{ fg = colors.yellow },
		DiagnosticVirtualTextWarn  = 			{ fg = colors.yellow },
		DiagnosticFloatingWarn = 				{ fg = colors.yellow },
		DiagnosticSignWarn = 					{ fg = colors.yellow, bg = colors.bg_sign },
		DiagnosticUnderlineWarn = 				{ undercurl = true, sp = colors.yellow },
		DiagnosticInformation =                 { fg = colors.paleblue },
		DiagnosticVirtualTextInfo = 			{ fg = colors.paleblue },
		DiagnosticFloatingInfo = 				{ fg = colors.paleblue },
		DiagnosticSignInfo = 					{ fg = colors.paleblue, bg = colors.bg_sign },
		DiagnosticUnderlineInfo = 				{ undercurl = true, sp = colors.paleblue },
		DiagnosticHint =                        { fg = colors.purple },
		DiagnosticVirtualTextHint = 			{ fg = colors.purple },
		DiagnosticFloatingHint = 				{ fg = colors.purple },
		DiagnosticSignHint = 					{ fg = colors.purple, bg = colors.bg_sign },
		DiagnosticUnderlineHint  = 				{ undercurl = true, sp = colors.purple },
		LspReferenceText = 						{ bg = colors.selection, underline = true }, -- used for highlighting "text" references
		LspReferenceRead = 						{ link = "LspReferenceText" }, -- used for highlighting "read" references
		LspReferenceWrite = 					{ link = "LspReferenceText" }, -- used for highlighting "write" references
	}

	return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

	local plugins = {
		-- Diff
		diffAdded =                             { fg = colors.green },
		diffRemoved =                           { fg = colors.red },
		diffChanged =                           { fg = colors.blue },
		diffOldFile =                           { fg = colors.text },
		diffNewFile =                           { fg = colors.title },
		diffFile =                              { fg = colors.gray },
		diffLine =                              { fg = colors.cyan },
		diffIndexLine =                         { fg = colors.purple },

		-- Symbols outline
		FocusedSymbol = 						{ bg = colors.selection },
		SymbolsOutlineConnector = 				{ fg = colors.border },

		-- BufferLine
		BufferLineIndicatorSelected =           { fg = colors.accent },
		BufferLineFill =                        { bg = colors.bg },

		-- Fern
		FernBranchText =						{ fg = colors.blue },
	}

	if config.plugins.trouble then

		-- Trouble
		plugins.TroubleText =                        	{ fg = colors.text, bg = colors.sidebar }
		plugins.TroubleCount =                       	{ fg = colors.purple, bg = colors.sidebar }
		plugins.TroubleNormal =                      	{ fg = colors.fg, bg = colors.sidebar }
		plugins.TroubleSignError = 						{ fg = colors.error, bg = colors.sidebar}
		plugins.TroubleSignWarning = 					{ fg = colors.yellow, bg = colors.sidebar}
		plugins.TroubleSignInformation = 				{ fg = colors.paleblue, bg = colors.sidebar}
		plugins.TroubleSignHint = 						{ fg = colors.purple, bg = colors.sidebar}
		plugins.TroubleFoldIcon = 						{ fg = colors.accent, bg = colors.sidebar }
		plugins.TroubleIndent = 						{ fg = colors.border, bg = colors.sidebar }
		plugins.TroubleLocation = 						{ fg = colors.disabled, bg = colors.sidebar }
	end

	if config.plugins.nvim_cmp then

		-- Nvim-Cmp
		plugins.CmpItemAbbrMatch =						{ fg = colors.paleblue, bold = true }
		plugins.CmpItemKindText =						{ fg = colors.red }
		plugins.CmpItemKindMethod =						{ fg = colors.blue }
		plugins.CmpItemKindFunction =					{ fg = colors.blue }
		plugins.CmpItemKindContructor =					{ fg = colors.purple }
		plugins.CmpItemKindField =						{ fg = colors.cyan }
		plugins.CmpItemKindVariable =					{ fg = colors.paleblue }
		plugins.CmpItemKindConstant =					{ fg = colors.paleblue }
		plugins.CmpItemKindClass =						{ fg = colors.yellow }
		plugins.CmpItemKindInterface =					{ fg = colors.yellow }
		plugins.CmpItemKindModule =						{ fg = colors.red }
		plugins.CmpItemKindProperty =					{ fg = colors.purple }
		plugins.CmpItemKindKeyword =					{ fg = colors.cyan }
		plugins.CmpItemKindFile =						{ fg = colors.title }
		plugins.CmpItemKindFolder =						{ fg = colors.title }
		plugins.CmpItemKindSnippet =					{ fg = colors.green }
	end

	if config.plugins.neogit then

		-- Neogit
		plugins.NeogitBranch =                          { fg = colors.paleblue }
		plugins.NeogitRemote =                          { fg = colors.purple }
		plugins.NeogitHunkHeader =                      { fg = colors.fg, bg = colors.highlight }
		plugins.NeogitHunkHeaderHighlight =             { fg = colors.blue, bg = colors.contrast }
		plugins.NeogitDiffContextHighlight =            { fg = colors.text, bg = colors.contrast }
		plugins.NeogitDiffDeleteHighlight =             { fg = colors.red }
		plugins.NeogitDiffAddHighlight =                { fg = colors.green }
	end

	if config.plugins.gitsigns then

		-- GitSigns
		plugins.GitSignsAdd =                           { fg = colors.green, bg = colors.bg_sign } -- diff mode: Added line |diff.txt|
		plugins.GitSignsAddNr =                         { fg = colors.green, bg =colors.bg_num } -- diff mode: Added line |diff.txt|
		plugins.GitSignsAddLn =                         { fg = colors.green } -- diff mode: Added line |diff.txt|
		plugins.GitSignsChange =                        { fg = colors.blue, bg = colors.bg_sign } -- diff mode: Changed line |diff.txt|
		plugins.GitSignsChangeNr =                      { fg = colors.blue, bg =colors.bg_num } -- diff mode: Changed line |diff.txt|
		plugins.GitSignsChangeLn =                      { fg = colors.blue } -- diff mode: Changed line |diff.txt|
		plugins.GitSignsDelete =                        { fg = colors.red, bg = colors.bg_sign } -- diff mode: Deleted line |diff.txt|
		plugins.GitSignsDeleteNr =                      { fg = colors.red, bg =colors.bg_num } -- diff mode: Deleted line |diff.txt|
		plugins.GitSignsDeleteLn =                      { fg = colors.red } -- diff mode: Deleted line |diff.txt|
	end

	if config.plugins.git_gutter then

		-- GitGutter
		plugins.GitGutterAdd =                          { fg = colors.green } -- diff mode: Added line |diff.txt|
		plugins.GitGutterChange =                       { fg = colors.blue } -- diff mode: Changed line |diff.txt|
		plugins.GitGutterDelete =                       { fg = colors.red } -- diff mode: Deleted line |diff.txt|
	end

	if config.plugins.telescope then

		-- Telescope
		plugins.TelescopeNormal =                       { fg = colors.fg, bg = colors.float }
		plugins.TelescopePromptBorder =                 { fg = colors.border, bg = colors.float }
		plugins.TelescopeResultsBorder =                { link = "TelescopePromptBorder" }
		plugins.TelescopePreviewBorder =                { link = "TelescopePromptBorder" }
		plugins.TelescopeSelectionCaret =               { fg = colors.purple }
		plugins.TelescopeSelection =                    { fg = colors.purple, bg = colors.active }
		plugins.TelescopeMatching =                     { fg = colors.cyan }
	end

	if config.plugins.nvim_tree then

		-- NvimTree
		plugins.NvimTreeNormal =						{ fg = colors.fg, bg = colors.sidebar }
		plugins.NvimTreeNormalNC =						{ link = "NvimTreeNormal" }
		plugins.NvimTreeRootFolder =                    { fg = colors.accent, bg = colors.sidebar }
		plugins.NvimTreeFolderName=                     { fg = colors.blue, bold = true }
		plugins.NvimTreeFolderIcon=                     { link = "NvimTreeFolderName" }
		plugins.NvimTreeEmptyFolderName=                { fg = colors.gray }
		plugins.NvimTreeOpenedFolderName=               { fg = colors.green, bold = true }
		plugins.NvimTreeIndentMarker =                  { fg = colors.disabled }
		plugins.NvimTreeGitDirty =                      { fg = colors.blue }
		plugins.NvimTreeGitNew =                        { fg = colors.green }
		plugins.NvimTreeGitStaged =                     { fg = colors.fg }
		plugins.NvimTreeGitDeleted =                    { fg = colors.red }
		plugins.NvimTreeOpenedFile =					{ link = "NvimTreeGitNew" }
		plugins.NvimTreeImageFile =                     { fg = colors.yellow }
		plugins.NvimTreeMarkdownFile =                  { fg = colors.pink }
		plugins.NvimTreeExecFile =                      { link = "NvimTreeGitNew" }
		plugins.NvimTreeSpecialFile =                   { fg = colors.purple }
	end

	if config.plugins.sidebar_nvim then

		-- Sidebar.nvim
		plugins.SidebarNvimNormal =						{ fg = colors.fg }
		plugins.SidebarNvimSectionTitle	=				{ fg = colors.accent }
		plugins.SidebarNvimSectionSeparator =			{ fg = colors.border }
		plugins.SidebarNvimLabel =						{ fg = colors.gray }
	end

	if config.plugins.lsp_saga then

		-- LspSaga
		plugins.LspFloatWinNormal =                     { fg = colors.fg, bg = colors.float }
		plugins.LspFloatWinBorder =                     { fg = colors.border, bg = colors.float }
		plugins.LspSagaDiagnosticBorder =				{ link = "LspFloatWinBorder" }
		plugins.LspSagaDiagnosticHeader =				{ fg = colors.blue }
		plugins.LspSagaDiagnosticTruncateLine =			{ fg = colors.border }
		plugins.LspLinesDiagBorder =					{ link = "LspFloatWinBorder" }
		plugins.ProviderTruncateLine =					{ link = "LspSagaDiagnosticTruncateLine" }
		plugins.LspSagaShTruncateLine =					{ link = "LspSagaDiagnosticTruncateLine" }
		plugins.LspSagaDocTruncateLine =				{ link = "LspSagaDiagnosticTruncateLine" }
		plugins.LineDiagTruncateLine =					{ link = "LspSagaDiagnosticTruncateLine" }
		plugins.LspSagaBorderTitle =                    { fg = colors.cyan, bg = colors.float }
		plugins.LspSagaHoverBorder =                    { link = "LspFloatWinBorder" }
		plugins.LspSagaRenameBorder =                   { link = "LspFloatWinBorder" }
		plugins.LspSagaRenamePromptPrefix =             { fg = colors.green }
		plugins.LspSagaDefPreviewBorder =               { link = "LspFloatWinBorder" }
		plugins.LspSagaCodeActionTitle =                { fg = colors.paleblue }
		plugins.LspSagaCodeActionContent =              { fg = colors.purple }
		plugins.LspSagaCodeActionBorder =               { link = "LspFloatWinBorder" }
		plugins.LspSagaCodeActionTruncateLine =			{ link = "LspSagaDiagnosticTruncateLine" }
		plugins.LspSagaSignatureHelpBorder =            { link = "LspFloatWinBorder" }
		plugins.LspSagaFinderSelection =                { link = "LspSagaRenamePromptPrefix" }
		plugins.LspSagaLspFinderBorder =				{ link = "LspFloatWinBorder" }
		plugins.LspSagaAutoPreview =					{ link = "LspFloatWinBorder" }
		plugins.ReferencesCount =                       { link = "LspSagaCodeActionContent" }
		plugins.DefinitionCount =                       { link = "LspSagaCodeActionContent" }
		plugins.DefinitionPreviewTitle =				{ link = "LspSagaRenamePromptPrefix" }
		plugins.DefinitionIcon =                        { fg = colors.blue }
		plugins.ReferencesIcon =                        { link = "DefinitionIcon" }
		plugins.TargetWord =                            { fg = colors.cyan }
	end

	if config.plugins.nvim_dap then

		-- Nvim dap
		plugins.DapBreakpoint =                         { fg = colors.red }
		plugins.DapStopped =                            { fg = colors.yellow }

		-- Nvim dap-UI
		plugins.DapUIFloatBorder =						{ fg = colors.border, bg = colors.bg }
		plugins.DapUIDecoration =						{ fg = colors.blue }
		-- plugins.DapUIVariable = 						{ fg = colors.fg }
	end

	if config.plugins.nvim_navic then
		-- nvim-navic
		plugins.NavicIconsFile =						{ fg = colors.title, bg = colors.selection }
		plugins.NavicIconsModule =						{ link = "NavicIconsFile" }
		plugins.NavicIconsNamespace =					{ fg = colors.yellow, bg = colors.selection }
		plugins.NavicIconsPackage =						{ link = "NavicIconsFile" }
		plugins.NavicIconsClass =						{ link = "NavicIconsModule" }
		plugins.NavicIconsMethod =						{ fg = colors.blue, bg = colors.selection }
		plugins.NavicIconsProperty =					{ fg = colors.purple, bg = colors.selection }
		plugins.NavicIconsField =						{ fg = colors.cyan, bg = colors.selection }
		plugins.NavicIconsConstructor =					{ link = "NavicIconsProperty"}
		plugins.NavicIconsEnum =						{ link = "NavicIconsNamespace" }
		plugins.NavicIconsInterface =					{ link = "NavicIconsModule" }
		plugins.NavicIconsFunction =					{ link = "NavicIconsMethod" }
		plugins.NavicIconsVariable =					{ fg = colors.paleblue, bg = colors.selection }
		plugins.NavicIconsConstant =					{ link = "NavicIconsVariable" }
		plugins.NavicIconsString =						{ fg = colors.orange, bg = colors.selection }
		plugins.NavicIconsNumber =						{ link = "NavicIconsString" }
		plugins.NavicIconsBoolean =						{ fg = colors.green, bg = colors.selection }
		plugins.NavicIconsArray =						{ link = "NavicIconsString" }
		plugins.NavicIconsObject =						{ link = "NavicIconsString" }
		plugins.NavicIconsKey =							{ link = "NavicIconsField" }
		plugins.NavicIconsNull =						{ fg = colors.red, bg = colors.selection }
		plugins.NavicIconsEnumMember =					{ link = "NavicIconsNamespace" }
		plugins.NavicIconsStruct =						{ link = "NavicIconsModule" }
		plugins.NavicIconsEvent =						{ link = "NavicIconsNull" }
		plugins.NavicIconsOperator =					{ link = "NavicIconsNull" }
		plugins.NavicIconsTypeParameter =				{ link = "NavicIconsBoolean" }
		plugins.NavicText =								{ fg = colors.fg, bg = colors.selection }
		plugins.NavicSeparator =						{ link = "NavicText" }
	end

	if config.plugins.which_key then

		-- WhichKey
		plugins.WhichKey =                              { fg = colors.accent, bold = true }
		plugins.WhichKeyGroup =                         { fg = colors.gray }
		plugins.WhichKeyDesc =                          { fg = colors.fg, italic = true }
		plugins.WhichKeySeparator =                     { fg = colors.red }
		plugins.WhichKeyFloat =                         { bg = colors.float }
	end

	if config.plugins.hop then

		-- Hop
		plugins.HopNextKey =							{ fg = colors.accent, bold = true }
		plugins.HopNextKey1 =							{ fg = colors.purple, bold = true }
		plugins.HopNextKey2 =							{ fg = colors.blue }
		plugins.HopUnmatched =							{ fg = colors.comments }
	end

	if config.plugins.sneak then

		-- Sneak
		plugins.Sneak =                                 { fg = colors.bg, bg = colors.accent }
		plugins.SneakScope =                            { bg = colors.selection }
	end

	if config.plugins.indent_blankline then

		-- Indent Blankline
		plugins.IndentBlanklineChar =                   { fg = colors.border }
		plugins.IndentBlanklineContextChar =            { fg = colors.fg }
	end

	if config.plugins.nvim_illuminate then

		-- Illuminate
		plugins.illuminatedWord =						{ bg = colors.highight, italic = true }
		plugins.illuminatedCurWord =					{ bg = colors.highight, underline = true }
	end

	if config.plugins.mini then

		-- Mini
		plugins.MiniCompletionActiveParameter = { underline = true }

		plugins.MiniCursorword = { underline = true }
		plugins.MiniCursorwordCurrent = { underline = true }

		plugins.MiniIndentscopeSymbol = { fg = colors.cyan }
		plugins.MiniIndentscopePrefix = { nocombine = true } -- Make it invisible

		plugins.MiniJump = { fg = colors.bg, bg = colors.accent }

		plugins.MiniJump2dSpot = { fg = colors.accent, bold = true, nocombine = true }

		plugins.MiniStarterCurrent = { nocombine = true }
		plugins.MiniStarterFooter = { fg = colors.green, italic = true }
		plugins.MiniStarterHeader = { fg = colors.comments }
		plugins.MiniStarterInactive = { link = "Comment" }
		plugins.MiniStarterItem = { link = "Normal" }
		plugins.MiniStarterItemBullet = { fg = colors.border }
		plugins.MiniStarterItemPrefix = { fg = colors.yellow }
		plugins.MiniStarterSection = {  fg = colors.cyan }
		plugins.MiniStarterQuery = { fg = colors.paleblue }

		plugins.MiniStatuslineDevinfo = { fg = colors.fg, bg = colors.active }
		plugins.MiniStatuslineFileinfo = { fg = colors.fg, bg = colors.active }
		plugins.MiniStatuslineFilename = { fg = colors.disabled, bg = colors.bg }
		plugins.MiniStatuslineInactive = { fg = colors.disabled, bg = colors.bg }
		plugins.MiniStatuslineModeCommand = { fg = colors.bg, bg = colors.yellow, bold = true }
		plugins.MiniStatuslineModeInsert = { fg = colors.bg, bg = colors.green, bold = true }
		plugins.MiniStatuslineModeNormal = { fg = colors.bg, bg = colors.accent, bold = true }
		plugins.MiniStatuslineModeOther = { fg = colors.bg, bg = colors.cyan, bold = true }
		plugins.MiniStatuslineModeReplace = { fg = colors.bg, bg = colors.red, bold = true }
		plugins.MiniStatuslineModeVisual = { fg = colors.bg, bg = colors.purple, bold = true }

		plugins.MiniSurround = { link = "IncSearch" }

		plugins.MiniTablineCurrent = { fg = colors.bg, bg = colors.accent, bold = true }
		plugins.MiniTablineFill = { link = "TabLineFill" }
		plugins.MiniTablineHidden = { fg = colors.fg, bg = colors.bg }
		plugins.MiniTablineModifiedCurrent = { fg = colors.accent, bg = colors.bg, bold = true }
		plugins.MiniTablineModifiedHidden = { fg = colors.bg, bg = colors.fg }
		plugins.MiniTablineModifiedVisible = { fg = colors.accent, bg = colors.bg }
		plugins.MiniTablineTabpagesection = { fg = colors.title, bg = colors.selection, bold = true }
		plugins.MiniTablineVisible = { fg = colors.bg, bg = colors.accent }

		plugins.MiniTestEmphasis = { bold = true }
		plugins.MiniTestFail = { fg = colors.red, bold = true }
		plugins.MiniTestPass = { fg = colors.green, bold = true }

		plugins.MiniTrailspace = { bg = colors.red }
	end

	return plugins

end

return theme
