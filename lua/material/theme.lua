local colors = require('material.colors')
local styles = require('material.styles')
local config = require('material.config').options

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = colors.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = colors.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = colors.puple }, -- struct, union, enum, etc.
		Comment =					{ fg = colors.comments, style = styles.comments }, -- italic comments
		SpecialComment =			{ fg = colors.comments, style = styles.comments }, -- special things inside a comment
		Conditional =				{ fg = colors.purple, style = styles.keywords }, -- italic if, then, else, endif, switch, etc.
		Constant =					{ fg = colors.yellow }, -- any constant
		Character =					{ fg = colors.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = colors.orange }, -- a number constant: 5
		Boolean =					{ fg = colors.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = colors.orange }, -- a floating point constant: 2.3e10
		Function =					{ fg = colors.blue, style = styles.functions }, -- italic funtion names
		Identifier =				{ fg = colors.fg, style = styles.variables }; -- any variable name
		Statement =					{ fg = colors.cyan }, -- any statement
		Keyword =					{ fg = colors.purple, style = styles.keywords }, -- italic for, do, while, etc.
		Label =						{ fg = colors.purple }, -- case, default, etc.
		Operator =					{ fg = colors.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = colors.red }, -- try, catch, throw
		PreProc =					{ fg = colors.purple }, -- generic Preprocessor
		Include =					{ fg = colors.blue }, -- preprocessor #include
		Define =					{ fg = colors.pink }, -- preprocessor #define
		Macro =						{ fg = colors.cyan }, -- same as Define
		Typedef =					{ fg = colors.red }, -- A typedef
		PreCondit =					{ fg = colors.cyan }, -- preprocessor #if, #else, #endif, etc.
		Repeat =					{ fg = colors.purple, style = styles.keywords }, -- italic any other keyword
		String =					{ fg = colors.green, style= styles.strings }, -- any string
		Special =					{ fg = colors.red }, -- any special symbol
		SpecialChar =				{ fg = colors.disabled }, -- special character in a constant
		Tag =						{ fg = colors.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = colors.cyan }, -- character that needs attention like , or .
		Debug =						{ fg = colors.red }, -- debugging statements
		Underlined =				{ fg = colors.link, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = colors.disabled }, -- left blank, hidden
		Error =						{ fg = colors.error, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = colors.yellow, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO HACK FIXME and XXX

		htmlLink =					{ fg = colors.link, style = 'underline' },
		htmlH1 =					{ fg = colors.cyan, style = 'bold' },
		htmlH2 =					{ fg = colors.red, style = 'bold' },
		htmlH3 =					{ fg = colors.green, style = 'bold' },
		htmlH4 =					{ fg = colors.yellow, style = 'bold' },
		htmlH5 =					{ fg = colors.purple, style = 'bold' },
		markdownH1 =				{ fg = colors.cyan, style = 'bold' },
		markdownH2 =				{ fg = colors.red, style = 'bold' },
		markdownH3 =				{ fg = colors.green, style = 'bold' },
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
		Folded =				{ fg = colors.disabled, style = 'italic' }, -- line used for closed folds
		FoldColumn =			{ fg = colors.blue }, -- 'foldcolumn'
		IncSearch =				{ fg = colors.title, bg = colors.selection, style = 'underline' }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		LineNr =				{ fg = colors.line_numbers, bg = colors.bg_num }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr =			{ fg = colors.accent, bg = colors.bg_num }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen =			{ fg = colors.yellow, style = 'bold' }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg =				{ fg = colors.accent }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MoreMsg =				{ fg = colors.accent }, -- |more-prompt|
		NonText =				{ fg = colors.disabled }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		PmenuSel =				{ fg = colors.contrast, bg = colors.accent }, -- Popup menu: selected item.
		Question =				{ fg = colors.green }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine =			{ fg = colors.highlight, bg = colors.title, style = 'reverse' }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		qfLineNr =				{ fg = colors.highlight, bg = colors.title, style = 'reverse' }, -- Line numbers for quickfix lists
		Search =				{ fg = colors.title, bg = colors.selection, style = 'bold' }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SignColumn =			{ fg = colors.fg, bg = colors.bg_sign },
		SpecialKey =			{ fg = colors.purple }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad =				{ fg = colors.red, style = 'italic,undercurl' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap =				{ fg = colors.blue, style = 'italic,undercurl' }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal =			{ fg = colors.cyan, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare =				{ fg = colors.purple, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine =			{ fg = colors.fg, bg = colors.active }, -- status line of current window
		StatusLineNC =  		{ fg = colors.disabled, bg = colors.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		StatusLineTerm =		{ fg = colors.fg, bg = colors.active }, -- status line of current terminal window
		StatusLineTermNC =		{ fg = colors.disabled, bg = colors.bg }, -- status lines of not-current terminal windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLineFill =			{ fg = colors.fg }, -- tab pages line, where there are no labels
		TablineSel =			{ fg = colors.bg, bg = colors.accent }, -- tab pages line, active tab page label
		Tabline =				{ fg = colors.fg },
		Title =					{ fg = colors.title, style = 'bold' }, -- titles for output from ":set all", ":autocmd" etc.
		Visual =				{ fg = colors.none, bg = colors.selection }, -- Visual mode selection
		VisualNOS =				{ fg = colors.none, bg = colors.selection }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg =			{ fg = colors.yellow }, -- warning messages
		Whitespace =			{ fg = colors.disabled }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu =				{ fg = colors.orange, style = 'bold' }, -- current match in 'wildmenu' completion
		CursorColumn =			{ fg = colors.none, bg = colors.bg_cur }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine =			{ fg = colors.none, bg = colors.bg_cur }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		-- ToolbarLine =			{ fg = colors.fg, bg = colors.bg_alt },
		-- ToolbarButton =			{ fg = colors.fg, style = 'bold' },
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
		DashboardFooter =                       { fg = colors.green, style = 'italic' },

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
		TSBoolean=                  { fg = colors.orange }, -- For booleans.
		TSCharacter=                { fg = colors.orange }, -- For characters.
		TSComment=                  { fg = colors.comments, style = styles.comments }, -- For comment blocks.
		TSConditional =             { fg = colors.purple, style = styles.keywords }, -- For keywords related to conditionnals.
		TSConstructor =             { fg = colors.blue }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant =                { fg = colors.yellow }, -- For constants
		TSConstBuiltin =            { fg = colors.orange }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro =              { fg = colors.cyan }, -- For constants that are defined by macros: `NULL` in C.
		TSError =                   { fg = colors.error }, -- For syntax/parser errors.
		TSException =               { fg = colors.red }, -- For exception related keywords.
		TSField =                   { fg = colors.fg }, -- For fields.
		TSFloat =                   { fg = colors.orange }, -- For floats.
		TSFunction =                { fg = colors.blue, style = styles.functions }, -- For fuction (calls and definitions).
		TSFuncBuiltin =             { fg = colors.cyan, style = styles.functions }, -- For builtin functions: `table.insert` in Lua.
		TSFuncMacro =               { fg = colors.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude =                 { fg = colors.cyan }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSKeyword =                 { fg = colors.cyan, style = styles.keywords }, -- For keywords that don't fall in previous categories.
		TSKeywordFunction =         { fg = colors.purple, style = styles.keywords }, -- For keywords used to define a fuction.
		TSKeywordOperator =			{ fg = colors.purple }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
		TSKeywordReturn =			{ fg = colors.cyan }, -- return keyword
		TSLabel =                   { fg = colors.red }, -- For labels: `label:` in C and `:label:` in Lua.
		TSMethod =                  { fg = colors.blue, style = styles.functions }, -- For method calls and definitions.
		TSNamespace =               { fg = colors.yellow }, -- For identifiers referring to modules and namespaces.
		TSNumber =                  { fg = colors.orange }, -- For all numbers
		TSOperator =                { fg = colors.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter =               { fg = colors.paleblue }, -- For parameters of a function.
		TSParameterReference =      { fg = colors.paleblue }, -- For references to parameters of a function.
		TSProperty =                { fg = colors.gray }, -- Same as `TSField`,accesing for struct members in C.
		TSPunctDelimiter =          { fg = colors.cyan }, -- For delimiters ie: `.`
		TSPunctBracket =            { fg = colors.cyan }, -- For brackets and parens.
		TSPunctSpecial =            { fg = colors.cyan }, -- For special punctutation that does not fall in the catagories before.
		TSRepeat =                  { fg = colors.purple, style = styles.keywords }, -- For keywords related to loops.
	    TSString =                  { fg = colors.green, styles = styles.strings }, -- For strings.
		TSStringRegex =             { fg = colors.yellow }, -- For regexes.
		TSStringEscape =            { fg = colors.text }, -- For escape characters within a string.
		TSSymbol =                  { fg = colors.yellow }, -- For identifiers referring to symbols or atoms.
		TSStrong =					{ fg = colors.paleblue, style = 'bold' }, -- Text to be represented in bold.
		TSType =                    { fg = colors.purple }, -- For types.
		TSTypeBuiltin =             { fg = colors.red }, -- For builtin types.
		TSTag =                     { fg = colors.red }, -- Tags like html tag names.
		TSTagDelimiter =            { fg = colors.cyan }, -- Tag delimiter like `<` `>` `/`
		TSTagAttribute =			{ fg = colors.gray }, -- HTML tag attributes.
		TSText =                    { fg = colors.fg }, -- For strings considered text in a markup language.
		TSTextReference =           { fg = colors.yellow }, -- FIXME
		TSVariable =                { fg = colors.fg, style = styles.variables }, -- Any variable name that does not have another highlight.
		TSVariableBuiltin =         { fg = colors.fg, style = styles.variables }, -- Variable names that are defined by the languages, like `this` or `self`.
		TSEmphasis =                { fg = colors.paleblue }, -- For text to be represented with emphasis.
		TSUnderline =               { fg = colors.fg, style = 'underline' }, -- For text to be represented with an underline.
		-- TSStrike =                  { fg = colors.fg,, style = 'strikethrough'}, -- For strikethrough text.
		TSTitle =                   { fg = colors.title, style = 'bold' }, -- Text that is part of a title.
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
		-- LspDiagnosticsDefaultError =            { fg = colors.error }, -- used for "Error" diagnostic virtual text
		-- LspDiagnosticsSignError =               { fg = colors.error, bg = colors.bg_sign }, -- used for "Error" diagnostic signs in sign column
		-- LspDiagnosticsFloatingError =           { fg = colors.error }, -- used for "Error" diagnostic messages in the diagnostics float
		-- LspDiagnosticsVirtualTextError =        { fg = colors.error }, -- Virtual text "Error"
		-- LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = colors.error }, -- used to underline "Error" diagnostics.
		-- LspDiagnosticsDefaultWarning =          { fg = colors.yellow }, -- used for "Warning" diagnostic signs in sign column
		-- LspDiagnosticsSignWarning =             { fg = colors.yellow, bg = colors.bg_sign }, -- used for "Warning" diagnostic signs in sign column
		-- LspDiagnosticsFloatingWarning =         { fg = colors.yellow }, -- used for "Warning" diagnostic messages in the diagnostics float
		-- LspDiagnosticsVirtualTextWarning =      { fg = colors.yellow }, -- Virtual text "Warning"
		-- LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = colors.yellow }, -- used to underline "Warning" diagnostics.
		-- LspDiagnosticsDefaultInformation =      { fg = colors.paleblue }, -- used for "Information" diagnostic virtual text
		-- LspDiagnosticsSignInformation =         { fg = colors.paleblue, bg = colors.bg_sign },  -- used for "Information" diagnostic signs in sign column
		-- LspDiagnosticsFloatingInformation =     { fg = colors.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
		-- LspDiagnosticsVirtualTextInformation =  { fg = colors.paleblue }, -- Virtual text "Information"
		-- LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = colors.paleblue }, -- used to underline "Information" diagnostics.
		-- LspDiagnosticsDefaultHint =             { fg = colors.purple },  -- used for "Hint" diagnostic virtual text
		-- LspDiagnosticsSignHint =                { fg = colors.purple, bg = colors.bg_sign }, -- used for "Hint" diagnostic signs in sign column
		-- LspDiagnosticsFloatingHint =            { fg = colors.purple }, -- used for "Hint" diagnostic messages in the diagnostics float
		-- LspDiagnosticsVirtualTextHint =         { fg = colors.purple }, -- Virtual text "Hint"
		-- LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = colors.paleblue }, -- used to underline "Hint" diagnostics.

		-- Nvim 0.6.
		DiagnosticError =                       { fg = colors.error },
		DiagnosticVirtualTextError = 			{ fg = colors.error },
		DiagnosticFloatingError = 				{ fg = colors.error },
		DiagnosticSignError = 					{ fg = colors.error, bg = colors.bg_sign },
		DiagnosticUnderlineError = 				{ style = 'undercurl', sp = colors.error },
		DiagnosticWarn =                     { fg = colors.yellow },
		DiagnosticVirtualTextWarn  = 			{ fg = colors.yellow },
		DiagnosticFloatingWarn = 				{ fg = colors.yellow },
		DiagnosticSignWarn = 					{ fg = colors.yellow, bg = colors.bg_sign },
		DiagnosticUnderlineWarn = 				{ style = 'undercurl', sp = colors.yellow },
		DiagnosticInformation =                 { fg = colors.paleblue },
		DiagnosticVirtualTextInfo = 			{ fg = colors.paleblue },
		DiagnosticFloatingInfo = 				{ fg = colors.paleblue },
		DiagnosticSignInfo = 					{ fg = colors.paleblue, bg = colors.bg_sign },
		DiagnosticUnderlineInfo = 				{ style = 'undercurl', sp = colors.paleblue },
		DiagnosticHint =                        { fg = colors.purple },
		DiagnosticVirtualTextHint = 			{ fg = colors.purple },
		DiagnosticFloatingHint = 				{ fg = colors.purple },
		DiagnosticSignHint = 					{ fg = colors.purple, bg = colors.bg_sign },
		DiagnosticUnderlineHint  = 				{ style = 'undercurl', sp = colors.purple },
		LspReferenceText = 						{ bg = colors.selection, style = 'underline' }, -- used for highlighting "text" references
		LspReferenceRead = 						{ bg = colors.selection, style = 'underline' }, -- used for highlighting "read" references
		LspReferenceWrite = 					{ bg = colors.selection, style = 'underline' }, -- used for highlighting "write" references
	}

	return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

	local plugins = {

		-- Built in debugger
		-- debugPC =								{ bg = material.selection },
		debugBreakpoint =						{ fg = colors.red, bg = colors.bg },

		-- Trouble
		TroubleText =                        	{ fg = colors.text, bg = colors.sidebar },
		TroubleCount =                       	{ fg = colors.purple, bg = colors.sidebar },
		TroubleNormal =                      	{ fg = colors.fg, bg = colors.sidebar },
		TroubleSignError = 						{ fg = colors.error, bg = colors.sidebar},
		TroubleSignWarning = 					{ fg = colors.yellow, bg = colors.sidebar},
		TroubleSignInformation = 				{ fg = colors.paleblue, bg = colors.sidebar},
		TroubleSignHint = 						{ fg = colors.purple, bg = colors.sidebar},
		TroubleFoldIcon = 						{ fg = colors.accent, bg = colors.sidebar },
		TroubleIndent = 						{ fg = colors.border, bg = colors.sidebar },
		TroubleLocation = 						{ fg = colors.disabled, bg = colors.sidebar },

		-- Nvim-Cmp
		CmpItemAbbrMatch =						{ fg = colors.paleblue, style = 'bold' },
		CmpItemKindText =						{ fg = colors.red },
		CmpItemKindMethod =						{ fg = colors.blue },
		CmpItemKindFunction =					{ fg = colors.blue },
		CmpItemKindContructor =					{ fg = colors.purple },
		CmpItemKindField =						{ fg = colors.cyan },
		CmpItemKindVariable =					{ fg = colors.paleblue },
		CmpItemKindConstant =					{ fg = colors.paleblue },
		CmpItemKindClass =						{ fg = colors.yellow },
		CmpItemKindInterface =					{ fg = colors.yellow },
		CmpItemKindModule =						{ fg = colors.red },
		CmpItemKindProperty =					{ fg = colors.purple },
		CmpItemKindKeyword =					{ fg = colors.cyan },
		CmpItemKindFile =						{ fg = colors.title },
		CmpItemKindFolder =						{ fg = colors.title },
		CmpItemKindSnippet =					{ fg = colors.green },

		-- Diff
		diffAdded =                             { fg = colors.green },
		diffRemoved =                           { fg = colors.red },
		diffChanged =                           { fg = colors.blue },
		diffOldFile =                           { fg = colors.text },
		diffNewFile =                           { fg = colors.title },
		diffFile =                              { fg = colors.gray },
		diffLine =                              { fg = colors.cyan },
		diffIndexLine =                         { fg = colors.purple },

		-- Neogit
		NeogitBranch =                          { fg = colors.paleblue },
		NeogitRemote =                          { fg = colors.purple },
		NeogitHunkHeader =                      { fg = colors.fg, bg = colors.highlight },
		NeogitHunkHeaderHighlight =             { fg = colors.blue, bg = colors.contrast },
		NeogitDiffContextHighlight =            { fg = colors.text, bg = colors.contrast },
		NeogitDiffDeleteHighlight =             { fg = colors.red },
		NeogitDiffAddHighlight =                { fg = colors.green },

		-- GitGutter
		GitGutterAdd =                          { fg = colors.green }, -- diff mode: Added line |diff.txt|
		GitGutterChange =                       { fg = colors.blue }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete =                       { fg = colors.red }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd =                           { fg = colors.green, bg = colors.bg_sign }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr =                         { fg = colors.green, bg =colors.bg_num }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn =                         { fg = colors.green }, -- diff mode: Added line |diff.txt|
		GitSignsChange =                        { fg = colors.blue, bg = colors.bg_sign }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr =                      { fg = colors.blue, bg =colors.bg_num }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn =                      { fg = colors.blue }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete =                        { fg = colors.red, bg = colors.bg_sign }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr =                      { fg = colors.red, bg =colors.bg_num }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn =                      { fg = colors.red }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopeNormal =                       { fg = colors.fg, bg = colors.float },
		TelescopePromptBorder =                 { fg = colors.border, bg = colors.float },
		TelescopeResultsBorder =                { fg = colors.border, bg = colors.float },
		TelescopePreviewBorder =                { fg = colors.border, bg = colors.float },
		TelescopeSelectionCaret =               { fg = colors.purple },
		TelescopeSelection =                    { fg = colors.purple, bg = colors.active },
		TelescopeMatching =                     { fg = colors.cyan },

		-- NvimTree
		NvimTreeNormal =						{ fg = colors.fg, bg = colors.sidebar },
		NvimTreeNormalNC =						{ fg = colors.fg, bg = colors.sidebar },
		NvimTreeRootFolder =                    { fg = colors.accent, bg = colors.sidebar },
		NvimTreeFolderName=                     { fg = colors.blue, style = 'bold' },
		NvimTreeFolderIcon=                     { fg = colors.blue, style = 'bold' },
		NvimTreeEmptyFolderName=                { fg = colors.gray },
		NvimTreeOpenedFolderName=               { fg = colors.green, style = 'bold' },
		NvimTreeIndentMarker =                  { fg = colors.disabled },
		NvimTreeGitDirty =                      { fg = colors.blue },
		NvimTreeGitNew =                        { fg = colors.green },
		NvimTreeGitStaged =                     { fg = colors.fg },
		NvimTreeGitDeleted =                    { fg = colors.red },
		NvimTreeOpenedFile =					{ fg = colors.green },
		NvimTreeImageFile =                     { fg = colors.yellow },
		NvimTreeMarkdownFile =                  { fg = colors.pink },
		NvimTreeExecFile =                      { fg = colors.green },
		NvimTreeSpecialFile =                   { fg = colors.purple },
		-- LspDiagnosticsError =                   { fg = colors.error },
		-- LspDiagnosticsWarning =                 { fg = colors.yellow },
		-- LspDiagnosticsInformation =             { fg = colors.paleblue },
		-- LspDiagnosticsHint =                    { fg = colors.purple },

		-- Sidebar.nvim
		SidebarNvimNormal =						{ fg = colors.fg },
		SidebarNvimSectionTitle	=				{ fg = colors.accent },
		SidebarNvimSectionSeparator =			{ fg = colors.border },
		SidebarNvimLabel =						{ fg = colors.gray },

		-- WhichKey
		WhichKey =                              { fg = colors.accent, style = 'bold'},
		WhichKeyGroup =                         { fg = colors.gray },
		WhichKeyDesc =                          { fg = colors.fg, style = 'italic' },
		WhichKeySeparator =                     { fg = colors.red },
		WhichKeyFloat =                         { bg = colors.float },

		-- LspSaga
		LspFloatWinNormal =                     { fg = colors.fg, bg = colors.float },
		LspFloatWinBorder =                     { fg = colors.border, bg = colors.float },
		LspSagaDiagnosticBorder =				{ fg = colors.border, bg = colors.float },
		LspSagaDiagnosticHeader =				{ fg = colors.blue },
		LspSagaDiagnosticTruncateLine =			{ fg = colors.border },
		LspLinesDiagBorder =					{ fg = colors.border, bg = colors.float },
		ProviderTruncateLine =					{ fg = colors.border },
		LspSagaShTruncateLine =					{ fg = colors.border },
		LspSagaDocTruncateLine =				{ fg = colors.border },
		LineDiagTruncateLine =					{ fg = colors.border },
		LspSagaBorderTitle =                    { fg = colors.cyan, bg = colors.float },
		LspSagaHoverBorder =                    { fg = colors.border, bg = colors.float },
		LspSagaRenameBorder =                   { fg = colors.border, bg = colors.float },
		LspSagaRenamePromptPrefix =             { fg = colors.green },
		LspSagaDefPreviewBorder =               { fg = colors.border, bg = colors.float },
		LspSagaCodeActionTitle =                { fg = colors.paleblue },
		LspSagaCodeActionContent =              { fg = colors.purple },
		LspSagaCodeActionBorder =               { fg = colors.border, bg = colors.float },
		LspSagaCodeActionTruncateLine =			{ fg = colors.border },
		LspSagaSignatureHelpBorder =            { fg = colors.border, bg = colors.float },
		LspSagaFinderSelection =                { fg = colors.green },
		LspSagaLspFinderBorder =				{ fg = colors.border, bg = colors.float },
		LspSagaAutoPreview =					{ fg = colors.border, bg = colors.float },
		ReferencesCount =                       { fg = colors.purple },
		DefinitionCount =                       { fg = colors.purple },
		DefinitionPreviewTitle =				{ fg = colors.green },
		DefinitionIcon =                        { fg = colors.blue },
		ReferencesIcon =                        { fg = colors.blue },
		TargetWord =                            { fg = colors.cyan },

		-- Symbols outline
		FocusedSymbol = 						{ bg = colors.selection },
		SymbolsOutlineConnector = 				{ fg = colors.border },

		-- BufferLine
		BufferLineIndicatorSelected =           { fg = colors.accent },
		BufferLineFill =                        { bg = colors.bg },

		-- Sneak
		Sneak =                                 { fg = colors.bg, bg = colors.accent },
		SneakScope =                            { bg = colors.selection },

		-- Indent Blankline
		IndentBlanklineChar =                   { fg = colors.border },
		IndentBlanklineContextChar =            { fg = colors.fg },

		-- Nvim dap
		DapBreakpoint =                         { fg = colors.red },
		DapStopped =                            { fg = colors.yellow },

		-- Nvim dap-UI
		DapUIFloatBorder =						{ fg = colors.border, bg = colors.bg },
		DapUIDecoration =						{ fg = colors.blue },
		-- DapUIVariable = 						{ fg = colors.fg },

		-- Illuminate
		illuminatedWord =						{ bg = colors.highight, gui = 'italic' },
		illuminatedCurWord =					{ bg = colors.highight, gui = 'underline' },

		-- Hop
		HopNextKey =							{ fg = colors.accent, style = 'bold' },
		HopNextKey1 =							{ fg = colors.purple, style = 'bold' },
		HopNextKey2 =							{ fg = colors.blue },
		HopUnmatched =							{ fg = colors.comments },

		-- Fern
		FernBranchText =						{ fg = colors.blue },
	}

	return plugins

end

return theme
