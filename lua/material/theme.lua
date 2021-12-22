local material = require('material.colors')
local config = require('material.config').options

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = material.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = material.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = material.puple }, -- struct, union, enum, etc.
		Constant =					{ fg = material.yellow }, -- any constant
		Character =					{ fg = material.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = material.orange }, -- a number constant: 5
		Boolean =					{ fg = material.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = material.orange }, -- a floating point constant: 2.3e10
		Statement =					{ fg = material.pink }, -- any statement
		Label =						{ fg = material.purple }, -- case, default, etc.
		Operator =					{ fg = material.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = material.cyan }, -- try, catch, throw
		PreProc =					{ fg = material.purple }, -- generic Preprocessor
		Include =					{ fg = material.blue }, -- preprocessor #include
		Define =					{ fg = material.pink }, -- preprocessor #define
		Macro =						{ fg = material.cyan }, -- same as Define
		Typedef =					{ fg = material.red }, -- A typedef
		PreCondit =					{ fg = material.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = material.red }, -- any special symbol
		SpecialChar =				{ fg = material.pink }, -- special character in a constant
		Tag =						{ fg = material.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = material.cyan }, -- character that needs attention like , or .
		SpecialComment =			{ fg = material.gray }, -- special things inside a comment
		Debug =						{ fg = material.red }, -- debugging statements
		Underlined =				{ fg = material.link, bg = material.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = material.disabled }, -- left blank, hidden
		Error =						{ fg = material.error, bg = material.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = material.yellow, bg = material.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		htmlLink = { fg = material.link, style = 'underline' },
		htmlH1 = { fg = material.cyan, style = 'bold' },
		htmlH2 = { fg = material.red, style = 'bold' },
		htmlH3 = { fg = material.green, style = 'bold' },
		htmlH4 = { fg = material.yellow, style = 'bold' },
		htmlH5 = { fg = material.purple, style = 'bold' },
		markdownH1 = { fg = material.cyan, style = 'bold' },
		markdownH2 = { fg = material.red, style = 'bold' },
		markdownH3 = { fg = material.green, style = 'bold' },
		markdownH1Delimiter = { fg = material.cyan },
		markdownH2Delimiter = { fg = material.red },
		markdownH3Delimiter = { fg = material.green },
	}

	-- Options:

	-- Italic comments
	if config.italics.comments then
		syntax.Comment =		{ fg = material.comments, style = 'italic' } -- italic comments
	else
		syntax.Comment =		{fg = material.comments} -- normal comments
	end

	-- Italic Keywords
	if config.italics.keywords then
		syntax.Conditional =		{ fg = material.purple, bg = material.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = material.purple, bg = material.none, style = 'italic' } -- italic for, do, while, etc.
		syntax.Repeat =				{ fg = material.purple, bg = material.none, style = 'italic' } -- italic any other keyword
	else
		syntax.Conditional =		{ fg = material.purple } -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = material.purple } -- normal for, do, while, etc.
		syntax.Repeat =				{ fg = material.purple } -- normal any other keyword
	end

	-- Italic Function names
	if config.italics.functions then
		syntax.Function =		{ fg = material.blue, bg = material.none, style = 'italic' } -- italic funtion names
	else
		syntax.Function =		{ fg = material.blue } -- normal function names
	end

	if config.italics.variables then
		syntax.Identifier =		{ fg = material.fg, bg = material.none, style = 'italic' }; -- any variable name
	else
		syntax.Identifier =		{ fg = material.fg }; -- any variable name
	end

    if config.italics.strings then
        syntax.String = { fg = material.green, bg = material.none, style= 'italic' } -- any string
    else
        syntax.String = { fg = material.green } -- any string
    end

	return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = material.fg, bg = material.float }, -- normal text and background color for floating windows
		FloatBorder =			{ fg = material.paleblue }, -- floating window border
		ColorColumn =			{ fg = material.none, bg = material.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = material.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = material.cursor, bg = material.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = material.cursor, bg = material.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = material.blue, bg = material.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = material.green, bg = material.none }, -- diff mode: Added line
		DiffChange =			{ fg = material.blue, bg = material.none }, --  diff mode: Changed line
		DiffDelete =			{ fg = material.red, bg = material.none }, -- diff mode: Deleted line
		DiffText =				{ fg = material.fg, bg = material.none }, -- diff mode: Changed text within a changed line
		ErrorMsg =				{ fg = material.error }, -- error messages
		Folded =				{ fg = material.disabled, bg = material.none, style = 'italic' }, -- line used for closed folds
		FoldColumn =			{ fg = material.blue }, -- 'foldcolumn'
		IncSearch =				{ fg = material.title, bg = material.selection, style = 'underline' }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		LineNr =				{ fg = material.line_numbers }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr =			{ fg = material.accent, bg = material.active }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen =			{ fg = material.yellow, bg = material.none, style = 'bold' }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg =				{ fg = material.accent }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MoreMsg =				{ fg = material.accent }, -- |more-prompt|
		NonText =				{ fg = material.disabled }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Question =				{ fg = material.green }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine =			{ fg = material.highlight, bg = material.title, style = 'reverse' }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		qfLineNr =				{ fg = material.highlight, bg = material.title, style = 'reverse' }, -- Line numbers for quickfix lists
		Search =				{ fg = material.title, bg = material.selection, style = 'bold' }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SpecialKey =			{ fg = material.purple }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad =				{ fg = material.red, bg = material.none, style = 'italic,undercurl' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap =				{ fg = material.blue, bg = material.none, style = 'italic,undercurl' }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal =			{ fg = material.cyan, bg = material.none, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare =				{ fg = material.purple, bg = material.none, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine =			{ fg = material.accent, bg = material.active }, -- status line of current window
		StatusLineNC =  		{ fg = material.fg, bg = material.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		StatusLineTerm =		{ fg = material.fg, bg = material.active }, -- status line of current terminal window
		StatusLineTermNC =		{ fg = material.text, bg = material.bg }, -- status lines of not-current terminal windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLineFill =			{ fg = material.fg }, -- tab pages line, where there are no labels
		TablineSel =			{ fg = material.bg, bg = material.accent }, -- tab pages line, active tab page label
		Tabline =				{ fg = material.fg },
		Title =					{ fg = material.title, bg = material.none, style = 'bold' }, -- titles for output from ":set all", ":autocmd" etc.
		Visual =				{ fg = material.none, bg = material.selection }, -- Visual mode selection
		VisualNOS =				{ fg = material.none, bg = material.selection }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg =			{ fg = material.yellow }, -- warning messages
		Whitespace =			{ fg = material.selection }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu =				{ fg = material.orange, bg = material.none, style = 'bold' }, -- current match in 'wildmenu' completion
		CursorColumn =			{ fg = material.none, bg = material.active }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine =			{ fg = material.none, bg = material.active }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		-- ToolbarLine =			{ fg = material.fg, bg = material.bg_alt },
		-- ToolbarButton =			{ fg = material.fg, bg = material.none, style = 'bold' },
		NormalMode =			{ fg = material.accent, bg = material.none, style = 'reverse' }, -- Normal mode message in the cmdline
		InsertMode =			{ fg = material.green, bg = material.none, style = 'reverse' }, -- Insert mode message in the cmdline
		ReplacelMode =			{ fg = material.red, bg = material.none, style = 'reverse' }, -- Replace mode message in the cmdline
		VisualMode =			{ fg = material.purple, bg = material.none, style = 'reverse' }, -- Visual mode message in the cmdline
		CommandMode =			{ fg = material.gray, bg = material.none, style = 'reverse' }, -- Command mode message in the cmdline
		Warnings =				{ fg = material.yellow },

        healthError =           { fg = material.error },
        healthSuccess =         { fg = material.green },
        healthWarning =         { fg = material.yellow },

		-- Dashboard
		DashboardShortCut =                     { fg = material.red },
		DashboardHeader =                       { fg = material.comments },
		DashboardCenter =                       { fg = material.accent },
		DashboardFooter =                       { fg = material.green, style = 'italic' },

	}

    -- Options:

    --Set transparent background
	if config.disable.background then
		editor.Normal =				{ fg = material.fg, bg = material.none } -- normal text and background color
		editor.SignColumn =			{ fg = material.fg, bg = material.none }
	else
		editor.Normal =				{ fg = material.fg, bg = material.bg } -- normal text and background color
		editor.SignColumn =			{ fg = material.fg, bg = material.bg }
	end

	-- Remove window split borders
	if config.borders then
		editor.VertSplit =				{ fg = material.border } -- the column separating vertically split windows
	else
		editor.VertSplit =				{ fg = material.bg } -- the column separating vertically split windows
	end

	--Set End of Buffer lines (~)
	if config.disable.eob_lines then
		editor.EndOfBuffer =			{ fg = material.bg } -- ~ lines at the end of a buffer
	else
		editor.EndOfBuffer =			{ fg = material.disabled } -- ~ lines at the end of a buffer
	end

	-- Set popup menu style
	if config.popup_menu == 'light' then
		editor.Pmenu =					{ fg = material.fg, bg = material.border } -- Popup menu: normal item.
		editor.PmenuSel =				{ fg = material.contrast, bg = material.accent, style = 'bold' } -- Popup menu: selected item.
		editor.PmenuSbar =				{ bg = material.active } -- Popup menu: scrollbar.
		editor.PmenuThumb =				{ bg = material.fg } -- Popup menu: Thumb of the scrollbar.
	elseif config.popup_menu == 'colorful' then
		editor.Pmenu =					{ fg = material.fg, bg = material.border } -- Popup menu: normal item.
		editor.PmenuSel =				{ fg = material.border, bg = material.green } -- Popup menu: selected item.
		editor.PmenuSbar =				{ bg = material.border } -- Popup menu: scrollbar.
		editor.PmenuThumb =				{ bg = material.red } -- Popup menu: Thumb of the scrollbar.
	elseif config.popup_menu == 'stealth' then
		editor.Pmenu =					{ fg = material.gray, bg = material.bg } -- Popup menu: normal item.
		editor.PmenuSel =				{ fg = material.title, bg = material.bg, style = 'bold' } -- Popup menu: selected item.
		editor.PmenuSbar =				{ bg = material.bg } -- Popup menu: scrollbar.
		editor.PmenuThumb =				{ bg = material.selection } -- Popup menu: Thumb of the scrollbar.
	else
		editor.Pmenu =					{ fg = material.fg, bg = material.contrast } -- Popup menu: normal item.
		editor.PmenuSel =				{ fg = material.contrast, bg = material.accent } -- Popup menu: selected item.
		editor.PmenuSbar =				{ bg = material.contrast } -- Popup menu: scrollbar.
		editor.PmenuThumb =				{ bg = material.selection } -- Popup menu: Thumb of the scrollbar.
	end

	return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = material.black
	vim.g.terminal_color_1 = material.darkred
	vim.g.terminal_color_2 = material.darkgreen
	vim.g.terminal_color_3 = material.darkyellow
	vim.g.terminal_color_4 = material.darkblue
	vim.g.terminal_color_5 = material.darkpurple
	vim.g.terminal_color_6 = material.darkcyan
	vim.g.terminal_color_7 = material.white
	vim.g.terminal_color_8 = material.fg
	vim.g.terminal_color_9 = material.red
	vim.g.terminal_color_10 = material.green
	vim.g.terminal_color_11 = material.yellow
	vim.g.terminal_color_12 = material.blue
	vim.g.terminal_color_13 = material.purple
	vim.g.terminal_color_14 = material.cyan
	vim.g.terminal_color_15 = material.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

	local treesitter = {
		TSAttribute =               { fg = material.yellow }, -- (unstable) TODO: docs
		TSBoolean=                  { fg = material.orange }, -- For booleans.
		TSCharacter=                { fg = material.orange }, -- For characters.
		TSConstructor =             { fg = material.blue }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant =                { fg = material.yellow }, -- For constants
		TSConstBuiltin =            { fg = material.orange }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro =              { fg = material.cyan }, -- For constants that are defined by macros: `NULL` in C.
		TSError =                   { fg = material.error }, -- For syntax/parser errors.
		TSException =               { fg = material.red }, -- For exception related keywords.
		TSField =                   { fg = material.fg }, -- For fields.
		TSFloat =                   { fg = material.orange }, -- For floats.
		TSFuncMacro =               { fg = material.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude =                 { fg = material.cyan }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSKeywordOperator =			{ fg = material.purple }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
		TSKeywordReturn =			{ fg = material.cyan }, -- return keyword
		TSLabel =                   { fg = material.red }, -- For labels: `label:` in C and `:label:` in Lua.
		TSNamespace =               { fg = material.yellow }, -- For identifiers referring to modules and namespaces.
		TSNumber =                  { fg = material.orange }, -- For all numbers
		TSOperator =                { fg = material.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter =               { fg = material.paleblue }, -- For parameters of a function.
		TSParameterReference =      { fg = material.paleblue }, -- For references to parameters of a function.
		TSProperty =                { fg = material.gray }, -- Same as `TSField`,accesing for struct members in C.
		TSPunctDelimiter =          { fg = material.cyan }, -- For delimiters ie: `.`
		TSPunctBracket =            { fg = material.cyan }, -- For brackets and parens.
		TSPunctSpecial =            { fg = material.cyan }, -- For special punctutation that does not fall in the catagories before.
		TSStringRegex =             { fg = material.blue }, -- For regexes.
		TSStringEscape =            { fg = material.disabled }, -- For escape characters within a string.
		TSSymbol =                  { fg = material.yellow }, -- For identifiers referring to symbols or atoms.
		TSStrong =					{ fg = material.paleblue, style = 'bold' }, -- Text to be represented in bold.
		TSType =                    { fg = material.purple }, -- For types.
		TSTypeBuiltin =             { fg = material.red }, -- For builtin types.
		TSTag =                     { fg = material.red }, -- Tags like html tag names.
		TSTagDelimiter =            { fg = material.cyan }, -- Tag delimiter like `<` `>` `/`
		TSTagAttribute =			{ fg = material.gray }, -- HTML tag attributes.
		TSText =                    { fg = material.fg }, -- For strings considered text in a markup language.
		TSTextReference =           { fg = material.yellow }, -- FIXME
		TSEmphasis =                { fg = material.paleblue }, -- For text to be represented with emphasis.
		TSUnderline =               { fg = material.fg, bg = material.none, style = 'underline' }, -- For text to be represented with an underline.
		TSStrike =                  { }, -- For strikethrough text.
		TSTitle =                   { fg = material.title, bg = material.none, style = 'bold' }, -- Text that is part of a title.
		TSLiteral =                 { fg = material.fg }, -- Literal text.
		TSURI =                     { fg = material.link }, -- Any URI like a link or email.
		TSMath =					{ fg = material.blue }, -- Math environments like LaTeX's `$ ... $`
		--TSNone =                    { }, -- TODO: docs
    }

	-- Options:

	-- TreeSitter Italic comments
	if config.italics.comments then
	    treesitter.TSComment=                  { fg = material.comments , bg = material.none, style = 'italic' } -- For comment blocks.
	else
	    treesitter.TSComment=                  { fg = material.comments } -- For comment blocks.
	end

	-- TreeSitter Italic strings
	if config.italics.strings then
	    treesitter.TSString =                  { fg = material.green, bg = material.none, style = 'italic' } -- For strings.
	else
	    treesitter.TSString =                  { fg = material.green } -- For strings.
	end

	-- TreeSitter Italic keywords
	if config.italics.keywords then
	    treesitter.TSConditional =             { fg = material.purple, style = 'italic' } -- For keywords related to conditionnals.
	    treesitter.TSKeyword =                 { fg = material.cyan, style = 'italic' } -- For keywords that don't fall in previous categories.
	    treesitter.TSRepeat =                  { fg = material.purple, style = 'italic' } -- For keywords related to loops.
	    treesitter.TSKeywordFunction =         { fg = material.purple, style = 'italic' } -- For keywords used to define a fuction.
	else
	    treesitter.TSConditional =             { fg = material.purple } -- For keywords related to conditionnals.
	    treesitter.TSKeyword =                 { fg = material.cyan } -- For keywords that don't fall in previous categories.
	    treesitter.TSRepeat =                  { fg = material.purple } -- For keywords related to loops.
	    treesitter.TSKeywordFunction =         { fg = material.purple } -- For keywords used to define a fuction.
	end

	-- TreeSitter Italic functions
	if config.italics.functions then
	    treesitter.TSFunction =                { fg = material.blue, style = 'italic' } -- For fuction (calls and definitions).
	    treesitter.TSMethod =                  { fg = material.blue, style = 'italic' } -- For method calls and definitions.
	    treesitter.TSFuncBuiltin =             { fg = material.cyan, style = 'italic' } -- For builtin functions: `table.insert` in Lua.
	else
	    treesitter.TSFunction =                { fg = material.blue } -- For fuction (calls and definitions).
	    treesitter.TSMethod =                  { fg = material.blue } -- For method calls and definitions.
	    treesitter.TSFuncBuiltin =             { fg = material.cyan } -- For builtin functions: `table.insert` in Lua.
	end

	-- TreeSitter Italic variables
	if config.italics.variables then
	    treesitter.TSVariable =                { fg = material.fg, style = 'italic' } -- Any variable name that does not have another highlight.
	    treesitter.TSVariableBuiltin =         { fg = material.fg, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
	else
	    treesitter.TSVariable =                { fg = material.fg } -- Any variable name that does not have another highlight.
	    treesitter.TSVariableBuiltin =         { fg = material.fg } -- Variable names that are defined by the languages, like `this` or `self`.
	end

	return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

	local lsp = {
		LspFloatWinNormal =                     { fg = material.text, bg = material.bg },
		LspFloatWinBorder =                     { fg = material.purple },
		DiagnosticError =                       { fg = material.error },
		DiagnosticWarning =                     { fg = material.yellow },
		DiagnosticInformation =                 { fg = material.paleblue },
		DiagnosticHint =                        { fg = material.purple },
		LspDiagnosticsDefaultError =            { fg = material.error }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError =               { fg = material.error }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError =           { fg = material.error }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError =        { fg = material.error }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = material.error }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning =          { fg = material.yellow }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning =             { fg = material.yellow }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning =         { fg = material.yellow }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning =      { fg = material.yellow }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = material.yellow }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation =      { fg = material.paleblue }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation =         { fg = material.paleblue },  -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation =     { fg = material.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation =  { fg = material.paleblue }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = material.paleblue }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint =             { fg = material.purple  },  -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint =                { fg = material.purple  }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint =            { fg = material.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint =         { fg = material.purple  }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = material.paleblue }, -- used to underline "Hint" diagnostics.
		LspReferenceText =                      { fg = material.white, style = 'underline' }, -- used for highlighting "text" references
		LspReferenceRead =                      { fg = material.white, style = 'underline' }, -- used for highlighting "read" references
		LspReferenceWrite =                     { fg = material.white, style = 'underline' }, -- used for highlighting "write" references

		-- Nvim 0.6.
		DiagnosticVirtualTextError = { fg = material.error },
		DiagnosticFloatingError    = { fg = material.error },
		DiagnosticSignError        = { fg = material.error },
		DiagnosticUnderlineError   = { style = 'undercurl', sp = material.error },
		DiagnosticVirtualTextWarn  = { fg = material.yellow },
		DiagnosticFloatingWarn     = { fg = material.yellow },
		DiagnosticSignWarn         = { fg = material.yellow },
		DiagnosticUnderlineWarn    = { style = 'undercurl', sp = material.yellow },
		DiagnosticVirtualTextInfo  = { fg = material.paleblue },
		DiagnosticFloatingInfo     = { fg = material.paleblue },
		DiagnosticSignInfo         = { fg = material.paleblue },
		DiagnosticUnderlineInfo    = { style = 'undercurl', sp = material.paleblue },
		DiagnosticVirtualTextHint  = { fg = material.purple },
		DiagnosticFloatingHint     = { fg = material.purple },
		DiagnosticSignHint         = { fg = material.purple },
		DiagnosticUnderlineHint    = { style = 'undercurl', sp = material.purple },
	}

	return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

	local plugins = {

		-- Built in debugger
		-- debugPC =								{ bg = material.selection },
		debugBreakpoint =						{ fg = material.red, bg = material.bg },

		-- LspTrouble
		LspTroubleText =                        { fg = material.text },
		LspTroubleCount =                       { fg = material.purple, bg = material.active },
		LspTroubleNormal =                      { fg = material.fg, bg = material.sidebar },

		-- Diff
		diffAdded =                             { fg = material.green },
		diffRemoved =                           { fg = material.red },
		diffChanged =                           { fg = material.blue },
		diffOldFile =                           { fg = material.text },
		diffNewFile =                           { fg = material.title },
		diffFile =                              { fg = material.gray },
		diffLine =                              { fg = material.cyan },
		diffIndexLine =                         { fg = material.purple },

		-- Neogit
		NeogitBranch =                          { fg = material.paleblue },
		NeogitRemote =                          { fg = material.purple },
		NeogitHunkHeader =                      { fg = material.fg, bg = material.highlight },
		NeogitHunkHeaderHighlight =             { fg = material.blue, bg = material.contrast },
		NeogitDiffContextHighlight =            { fg = material.text, bg = material.contrast },
		NeogitDiffDeleteHighlight =             { fg = material.red },
		NeogitDiffAddHighlight =                { fg = material.green },

		-- GitGutter
		GitGutterAdd =                          { fg = material.green }, -- diff mode: Added line |diff.txt|
		GitGutterChange =                       { fg = material.blue }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete =                       { fg = material.red }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd =                           { fg = material.green }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr =                         { fg = material.green }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn =                         { fg = material.green }, -- diff mode: Added line |diff.txt|
		GitSignsChange =                        { fg = material.blue }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr =                      { fg = material.blue }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn =                      { fg = material.blue }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete =                        { fg = material.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr =                      { fg = material.red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn =                      { fg = material.red }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopeNormal =                       { fg = material.fg, bg = material.bg },
		TelescopePromptBorder =                 { fg = material.cyan },
		TelescopeResultsBorder =                { fg = material.purple },
		TelescopePreviewBorder =                { fg = material.green },
		TelescopeSelectionCaret =               { fg = material.purple },
		TelescopeSelection =                    { fg = material.purple, bg = material.active },
		TelescopeMatching =                     { fg = material.cyan },

		-- NvimTree
		NvimTreeRootFolder =                    { fg = material.fg, style = 'italic' },
		NvimTreeFolderName=                     { fg = material.text },
		NvimTreeFolderIcon=                     { fg = material.accent, bg = material.sidebar },
		NvimTreeEmptyFolderName=                { fg = material.disabled },
		NvimTreeOpenedFolderName=               { fg = material.accent, style = 'italic' },
		NvimTreeIndentMarker =                  { fg = material.disabled },
		NvimTreeGitDirty =                      { fg = material.blue },
		NvimTreeGitNew =                        { fg = material.green },
		NvimTreeGitStaged =                     { fg = material.comments },
		NvimTreeGitDeleted =                    { fg = material.red },
		NvimTreeOpenedFile =                    { fg = material.accent },
		NvimTreeImageFile =                     { fg = material.yellow },
		NvimTreeMarkdownFile =                  { fg = material.pink },
		NvimTreeExecFile =                      { fg = material.green },
		NvimTreeSpecialFile =                   { fg = material.purple , style = 'underline' },
		LspDiagnosticsError =                   { fg = material.error },
		LspDiagnosticsWarning =                 { fg = material.yellow },
		LspDiagnosticsInformation =             { fg = material.paleblue },
		LspDiagnosticsHint =                    { fg = material.purple },

		-- WhichKey
		WhichKey =                              { fg = material.accent , style = 'bold'},
		WhichKeyGroup =                         { fg = material.text },
		WhichKeyDesc =                          { fg = material.blue, style = 'italic' },
		WhichKeySeperator =                     { fg = material.fg },
		WhichKeyFloating =                      { bg = material.float },
		WhichKeyFloat =                         { bg = material.float },

		-- LspSaga
		LspSagaDiagnosticBorder =				{ fg = material.blue },
		LspSagaDiagnosticHeader =				{ fg = material.blue },
		LspSagaDiagnosticTruncateLine =			{ fg = material.border },
		LspLinesDiagBorder =					{ fg = material.contrast },
		ProviderTruncateLine =					{ fg = material.border },
		LspSagaShTruncateLine =					{ fg = material.border },
		LspSagaDocTruncateLine =				{ fg = material.border },
		LineDiagTruncateLine =					{ fg = material.border },
		LspSagaBorderTitle =                    { fg = material.cyan },
		LspSagaHoverBorder =                    { fg = material.paleblue },
		LspSagaRenameBorder =                   { fg = material.green },
		LspSagaRenamePromptPrefix =             { fg = material.yellow },
		LspSagaDefPreviewBorder =               { fg = material.green },
		LspSagaCodeActionTitle =                { fg = material.paleblue },
		LspSagaCodeActionContent =              { fg = material.purple },
		LspSagaCodeActionBorder =               { fg = material.blue },
		LspSagaCodeActionTruncateLine =			{ fg = material.border },
		LspSagaSignatureHelpBorder =            { fg = material.pink },
		LspSagaFinderSelection =                { fg = material.green },
		-- LspSagaAutoPreview =					{ fg = material.red },
		ReferencesCount =                       { fg = material.purple },
		DefinitionCount =                       { fg = material.purple },
		DefinitionPreviewTitle =				{ fg = material.green },
		DefinitionIcon =                        { fg = material.blue },
		ReferencesIcon =                        { fg = material.blue },
		TargetWord =                            { fg = material.cyan },

		-- BufferLine
		BufferLineIndicatorSelected =           { fg = material.accent },
		BufferLineFill =                        { bg = material.bg },

		-- Sneak
		Sneak =                                 { fg = material.bg, bg = material.accent },
		SneakScope =                            { bg = material.selection },

		-- Indent Blankline
		IndentBlanklineChar =                   { fg = material.highlight },
		IndentBlanklineContextChar =            { fg = material.fg },

		-- Nvim dap
		DapBreakpoint =                         { fg = material.red },
		DapStopped =                            { fg = material.yellow },

		-- Nvim dap-UI
		DapUIFloatBorder =						{ fg = material.yellow },
		DapUIDecoration =						{ fg = material.blue },

		-- Illuminate
		illuminatedWord =						{ bg = material.highight },
		illuminatedCurWord =					{ bg = material.highight },

		-- Hop
		HopNextKey =							{ fg = material.accent, style = 'bold' },
		HopNextKey1 =							{ fg = material.purple, style = 'bold' },
		HopNextKey2 =							{ fg = material.blue },
		HopUnmatched =							{ fg = material.comments },

		-- Fern
		FernBranchText =						{ fg = material.blue },
	}

    -- Options:

    -- Disable nvim-tree background
	if config.disable.background then
		plugins.NvimTreeNormal =                        { fg = material.comments, bg = material.none }
	else
		plugins.NvimTreeNormal =                        { fg = material.comments, bg = material.sidebar }
	end

	-- Nvim-Cmp style options
	if config.popup_menu == 'light' then
		plugins.CmpItemKind =							{ fg = material.green }
		plugins.CmpItemAbbrMatch =						{ fg = material.paleblue, style = 'bold' }
		plugins.CmpItemAbbr =							{ fg = material.fg }
	elseif config.popup_menu == 'colorful' then
		plugins.CmpItemKind =							{ fg = material.blue, style = 'italic' }
		plugins.CmpItemAbbrMatch =						{ fg = material.yellow, style = 'bold' }
	elseif config.popup_menu == 'stealth' then
		plugins.CmpItemKind =							{ fg = material.fg }
	else
		plugins.CmpItemAbbrMatch =						{ fg = material.paleblue, style = 'bold' }
	end

	return plugins

end

return theme
