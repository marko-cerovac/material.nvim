local material = require("material.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = material.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = material.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = material.puple }, -- struct, union, enum, etc.
		Constant =					{ fg = material.yellow }, -- any constant
		String =					{ fg = material.green, bg = material.none, style= 'italic' }, -- Any string
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

        htmlLink = { fg = material.link, style = "underline" },
        htmlH1 = { fg = material.cyan, style = "bold" },
        htmlH2 = { fg = material.red, style = "bold" },
        htmlH3 = { fg = material.green, style = "bold" },
        htmlH4 = { fg = material.yellow, style = "bold" },
        htmlH5 = { fg = material.purple, style = "bold" },
        markdownH1 = { fg = material.cyan, style = "bold" },
        markdownH2 = { fg = material.red, style = "bold" },
        markdownH3 = { fg = material.green, style = "bold" },
        markdownH1Delimiter = { fg = material.cyan },
        markdownH2Delimiter = { fg = material.red },
        markdownH3Delimiter = { fg = material.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.material_italic_comments == true then
		syntax.Comment =		{fg = material.comments, bg = material.none, style = 'italic'} -- italic comments
	else
		syntax.Comment =		{fg = material.comments} -- normal comments
	end

	-- Italic Keywords
	if vim.g.material_italic_keywords == true then
		syntax.Conditional =		{fg = material.purple, bg = material.none, style = 'italic'} -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = material.purple, bg = material.none, style = 'italic'} -- italic for, do, while, etc.
		syntax.Repeat =				{fg = material.purple, bg = material.none, style = 'italic'} -- italic any other keyword
	else
		syntax.Conditional =		{fg = material.purple} -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = material.purple} -- normal for, do, while, etc.
		syntax.Repeat =				{fg = material.purple} -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.material_italic_functions == true then
		syntax.Function =		{fg = material.blue, bg = material.none, style = 'italic'} -- italic funtion names
	else
		syntax.Function =		{fg = material.blue} -- normal function names
	end

	if vim.g.material_italic_variables == true then
		Identifier =				{fg = material.variable, bg = material.none, style = 'italic'}; -- any variable name
    else
		Identifier =				{fg = material.variable}; -- any variable name
    end

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = material.fg, bg = material.float }, -- normal text and background color for floating windows
		ColorColumn =			{ fg = material.none, bg = material.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = material.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = material.cursor, bg = material.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = material.cursor, bg = material.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = material.blue, bg = material.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = material.green, bg = material.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = material.orange, bg = material.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = material.red, bg = material.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = material.yellow, bg = material.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			{ fg = material.disabled }, -- ~ lines at the end of a buffer
		ErrorMsg =				{ fg = material.error }, -- error messages
		Folded =				{ fg = material.disabled, material.none, style = 'italic' },
		FoldColumn =			{ fg = material.blue },
		IncSearch =				{ fg = material.highlight, bg = material.white, style = 'reverse' },
		LineNr =				{ fg = material.line_numbers },
		CursorLineNr =			{ fg = material.accent },
		MatchParen =			{ fg = material.yellow, bg = material.none, style = 'bold' },
		ModeMsg =				{ fg = material.accent },
		MoreMsg =				{ fg = material.accent },
		NonText =				{ fg = material.disabled },
		Pmenu =					{ fg = material.text, bg = material.contrast },
		PmenuSel =				{ fg = material.accent, bg = material.active },
		PmenuSbar =				{ fg = material.text, bg = material.contrast },
		PmenuThumb =			{ fg = material.fg, bg = material.accent },
		Question =				{ fg = material.green },
		QuickFixLine =			{ fg = material.highlight, material.white, style = 'reverse' },
		qfLineNr =				{ fg = material.highlight, material.white, style = 'reverse' },
		Search =				{ fg = material.highlight, bg = material.white, style = 'reverse' },
		SpecialKey =			{ fg = material.purple },
		SpellBad =				{ fg = material.red, bg = material.none, style = 'italic,undercurl' },
		SpellCap =				{ fg = material.blue, bg = material.none, style = 'italic,undercurl' },
		SpellLocal =			{ fg = material.cyan, bg = material.none, style = 'italic,undercurl' },
		SpellRare =				{ fg = material.purple, bg = material.none, style = 'italic,undercurl' },
		StatusLine =			{ fg = material.fg, bg = material.contrast },
		StatusLineNC =  		{ fg = material.text, bg = material.disabled },
		StatusLineTerm =		{ fg = material.fg, bg = material.contrast },
		StatusLineTermNC =		{ fg = material.text, bg = material.disabled },
		TabLineFill =			{ fg = material.fg },
		TablineSel =			{ fg = material.bg, bg = material.accent },
		Tabline =				{ fg = material.fg },
		Title =					{ fg = material.title, bg = material.none, style = 'bold' },
		Visual =				{ fg = material.none, bg = material.selection },
		VisualNOS =				{ fg = material.none, bg = material.selection },
		WarningMsg =			{ fg = material.yellow },
		WildMenu =				{ fg = material.orange, bg = material.none, style = 'bold' },
		CursorColumn =			{ fg = material.none, bg = material.active },
		CursorLine =			{ fg = material.none, bg = material.active },
		ToolbarLine =			{ fg = material.fg, bg = material.bg_alt },
		ToolbarButton =			{ fg = material.fg, bg = material.none, style = 'bold' },
		NormalMode =			{ fg = material.accent, bg = material.none, style = 'reverse' },
		InsertMode =			{ fg = material.green, bg = material.none, style = 'reverse' },
		ReplacelMode =			{ fg = material.red, bg = material.none, style = 'reverse' },
		VisualMode =			{ fg = material.purple, bg = material.none, style = 'reverse' },
		CommandMode =			{ fg = material.gray, bg = material.none, style = 'reverse' },
		Warnings =				{ fg = material.yellow },

        healthError =           { fg = material.error },
        healthSuccess =         { fg = material.green },
        healthWarning =         { fg = material.yellow },

        -- Dashboard
        DashboardShortCut =                     { fg = material.red },
        DashboardHeader =                       { fg = material.comments },
        DashboardCenter =                       { fg = material.accent },
        DashboardFooter =                       { fg = material.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.material_disable_background == true then
		editor.Normal =				{ fg = material.fg, bg = material.none } -- normal text and background color
		editor.SignColumn =			{ fg = material.fg, bg = material.none }
    else
		editor.Normal =				{ fg = material.fg, bg = material.bg } -- normal text and background color
		editor.SignColumn =			{ fg = material.fg, bg = material.bg }
    end

    -- Remove window split borders
    if vim.g.material_borders == true then
		editor.VertSplit =				{ fg = material.border }
    else
		editor.VertSplit =				{ fg = material.bg }
    end

    return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = material.black
	vim.g.terminal_color_1 = material.red
	vim.g.terminal_color_2 = material.green
	vim.g.terminal_color_3 = material.yellow
	vim.g.terminal_color_4 = material.blue
	vim.g.terminal_color_5 = material.purple
	vim.g.terminal_color_6 = material.cyan
	vim.g.terminal_color_7 = material.white
	vim.g.terminal_color_8 = material.gray
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
        TSAnnotation =              { fg = material.red },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = material.yellow },    -- (unstable) TODO: docs
        TSBoolean=                  { fg = material.orange },    -- For booleans.
        TSCharacter=                { fg = material.orange },    -- For characters.
        TSConstructor =             { fg = material.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = material.yellow },    -- For constants
        TSConstBuiltin =            { fg = material.blue },    -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = material.blue },    -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = material.error },    -- For syntax/parser errors.
        TSException =               { fg = material.yellow },    -- For exception related keywords.
        TSField =                   { fg = material.variable }, -- For fields.
        TSFloat =                   { fg = material.red },    -- For floats.
        TSFuncMacro =               { fg = material.blue },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = material.cyan },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = material.red }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = material.yellow },    -- For identifiers referring to modules and namespaces.
        TSNumber =                  { fg = material.orange },    -- For all numbers
        TSOperator =                { fg = material.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = material.paleblue }, -- For parameters of a function.
        TSParameterReference=       { fg = material.paleblue },    -- For references to parameters of a function.
        TSProperty =                { fg = material.paleblue }, -- Same as `TSField`.
        TSPunctDelimiter =          { fg = material.cyan }, -- For delimiters ie: `.`
        TSPunctBracket =            { fg = material.cyan }, -- For brackets and parens.
        TSPunctSpecial =            { fg = material.cyan }, -- For special punctutation that does not fall in the catagories before.
        TSString =                  { fg = material.green },    -- For strings.
        TSStringRegex =             { fg = material.blue }, -- For regexes.
        TSStringEscape =            { fg = material.disabled }, -- For escape characters within a string.
        TSSymbol =                  { fg = material.yellow },    -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = material.purple },    -- For types.
        TSTypeBuiltin =             { fg = material.purple },    -- For builtin types.
        TSTag =                     { fg = material.red },    -- Tags like html tag names.
        TSTagDelimiter =            { fg = material.yellow },    -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = material.text },    -- For strings considered text in a markup language.
        TSTextReference =           { fg = material.yellow }, -- FIXME
        TSEmphasis =                { fg = material.paleblue },    -- For text to be represented with emphasis.
        TSUnderline =               { fg = material.fg, bg = material.none, style = 'underline' },    -- For text to be represented with an underline.
        TSStrike =                  { },    -- For strikethrough text.
        TSTitle =                   { fg = material.title, bg = material.none, style = 'bold' },    -- Text that is part of a title.
        TSLiteral =                 { fg = material.fg },    -- Literal text.
        TSURI =                     { fg = material.link },    -- Any URI like a link or email.
        --TSNone =                    { },    -- TODO: docs
    }

    -- Options:

    -- Italic comments
    if vim.g.material_italic_comments == true then
        treesitter.TSComment=                  { fg = material.comments , bg = material.none, style = 'italic' }    -- For comment blocks.
    else
        treesitter.TSComment=                  { fg = material.comments }    -- For comment blocks.
    end

    if vim.g.material_italic_keywords == true then
        treesitter.TSConditional =             { fg = material.purple, style = 'italic' }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = material.purple, style = 'italic' } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = material.purple, style = 'italic' }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = material.purple, style = 'italic' } -- For keywords used to define a fuction.
    else
        treesitter.TSConditional =             { fg = material.purple }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = material.purple } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = material.purple }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = material.purple } -- For keywords used to define a fuction.
    end

    if vim.g.material_italic_functions == true then
        treesitter.TSFunction =                { fg = material.blue, style = 'italic' }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = material.blue, style = 'italic' }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = material.cyan, style = 'italic' }    -- For builtin functions: `table.insert` in Lua.
    else
        treesitter.TSFunction =                { fg = material.blue }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = material.blue }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = material.cyan }    -- For builtin functions: `table.insert` in Lua.
    end

    if vim.g.material_italic_variables == true then
        treesitter.TSVariable =                { fg = material.variable, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = material.variable, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
    else
        treesitter.TSVariable =                { fg = material.variable } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = material.variable } -- Variable names that are defined by the languages, like `this` or `self`.
    end

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = material.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = material.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = material.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = material.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = material.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = material.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = material.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = material.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = material.yellow}, -- Virtual text "Warning"
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
        LspReferenceText =                      { fg = material.accent, bg = material.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = material.accent, bg = material.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = material.accent, bg = material.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = material.text },
        LspTroubleCount =                       { fg = material.purple, bg = material.active },
        LspTroubleNormal =                      { fg = material.fg, bg = material.sidebar },

        -- Diff
        diffAdded =                             { fg = material.green },
        diffRemoved =                           { fg = material.red },
        diffChanged =                           { fg = material.yellow },
        diffOldFile =                           { fg = material.yelow },
        diffNewFile =                           { fg = material.orange },
        diffFile =                              { fg = material.blue },
        diffLine =                              { fg = material.comments },
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
        GitGutterChange =                       { fg = material.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = material.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = material.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = material.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = material.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = material.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = material.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = material.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = material.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = material.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = material.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = material.cyan },
        TelescopeResultsBorder =                { fg = material.purple },
        TelescopePreviewBorder =                { fg = material.green },
        TelescopeSelectionCaret =               { fg = material.purple },
        TelescopeSelection =                    { fg = material.purple },
        TelescopeMatching =                     { fg = material.cyan },
        TelescopeNormal =                       { fg = material.fg, bg = material.float },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = material.title, style = "italic" },
        NvimTreeGitDirty =                      { fg = material.yellow },
        NvimTreeGitNew =                        { fg = material.green },
        NvimTreeImageFile =                     { fg = material.yellow },
        NvimTreeExecFile =                      { fg = material.green },
        NvimTreeSpecialFile =                   { fg = material.purple , style = "underline" },
        NvimTreeFolderName=                     { fg = material.paleblue },
        NvimTreeEmptyFolderName=                { fg = material.disabled },
        NvimTreeFolderIcon=                     { fg = material.accent },
        NvimTreeIndentMarker =                  { fg = material.disabled },
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
        DiagnosticError =                       { fg = material.error },
        DiagnosticWarning =                     { fg = material.yellow },
        DiagnosticInformation =                 { fg = material.paleblue },
        DiagnosticHint =                        { fg = material.purple },
        DiagnosticTruncateLine =                { fg = material.fg },
        LspFloatWinNormal =                     { bg = material.contrast },
        LspFloatWinBorder =                     { fg = material.purple },
        LspSagaBorderTitle =                    { fg = material.cyan },
        LspSagaHoverBorder =                    { fg = material.paleblue },
        LspSagaRenameBorder =                   { fg = material.green },
        LspSagaDefPreviewBorder =               { fg = material.green },
        LspSagaCodeActionBorder =               { fg = material.blue },
        LspSagaFinderSelection =                { fg = material.green },
        LspSagaCodeActionTitle =                { fg = material.paleblue },
        LspSagaCodeActionContent =              { fg = material.purple },
        LspSagaSignatureHelpBorder =            { fg = material.pink },
        ReferencesCount =                       { fg = material.purple },
        DefinitionCount =                       { fg = material.purple },
        DefinitionIcon =                        { fg = material.blue },
        ReferencesIcon =                        { fg = material.blue },
        TargetWord =                            { fg = material.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = material.accent },
        BufferLineFill =                        { bg = material.bg_alt },

        -- Sneak
        Sneak =                                 { fg = material.bg, bg = material.accent },
        SneakScope =                            { bg = material.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = material.highlight },
        IndentBlanklineContextChar =            { fg = material.disabled },

        -- Nvim dap
        DapBreakpoint =                         { fg = material.red },
        DapStopped =                            { fg = material.green },
    }

    -- Options:

    -- Disable nvim-tree background
        if vim.g.material_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = material.fg, bg = material.none }
        else
            plugins.NvimTreeNormal =                        { fg = material.fg, bg = material.sidebar }
        end

    return plugins

end

return theme
