local Color, colors, Group, groups, styles = require('colorbuddy').setup()
local g = require('colorbuddy.group').groups
local c = require('colorbuddy.color').colors
local s = require('colorbuddy.style').styles
local b = s.bold
local i = s.italic
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local no = s.NONE
local v = vim.g

v.colors_name = 'material'
--v.material_style = 'deep ocean'

-- Universal colors

Color.new('fg1',			'#A6ACCD')
Color.new('fg2',			'#607D8B')
Color.new('fg3',			'#8F93A2')
Color.new('disabled',       '#464B5D')
Color.new('line_numbers',   '#525975')
Color.new('selection',      '#1F2233')

Color.new('white',          '#EEFFFF')
Color.new('gray',           '#717CB4')
Color.new('black',          '#000000')
Color.new('red',            '#F07178')
Color.new('green',          '#C3E88D')
Color.new('yellow',         '#FFCB6B')
Color.new('blue',           '#82AAFF')
Color.new('cyan',           '#89DDFF')
Color.new('purple',         '#C792EA')
Color.new('orange',         '#F78C6C')

Color.new('comments',       '#464B5D')
Color.new('error',          '#FF5370')
Color.new('link',           '#80CBC4')
Color.new('type',           '#FFCB6B')
Color.new('function',       '#82AAFF')
Color.new('green',          '#C3E88D')


-- Style specific colors

if v.material_style == 'darker' then
	-- Darker theme style

	Color.new('bg',					'#212121')
	Color.new('fg1',				'#EEFFFF')
	Color.new('invisibles',			'#65737E')
	Color.new('comments',			'#545454')
	Color.new('selection',			'#2C2C2C')
	Color.new('guides',				'#424242')
	Color.new('line_numbers',		'#424242')
	Color.new('line_highlight',		'#171717')
	Color.new('accent',				'#FF9800')

elseif v.material_style == 'lighter' then
	-- Lighter theme style

	Color.new('bg',					'#FAFAFA')
	Color.new('fg1',				'#90A4AE')
	Color.new('invisibles',			'#E7EAEC')
	Color.new('comments',			'#90A4AE')
	Color.new('caret',				'#272727')
	Color.new('selection',			'#EBF4F3')
	Color.new('guides',				'#B0BEC5')
	Color.new('line_numbers',		'#CFD8DC')
	Color.new('line_highlight',		'#ECF0F1')
	Color.new('white',				'#FFFFFF')
	Color.new('black',				'#000000')
	Color.new('red',				'#E53935')
	Color.new('orange',				'#F76D47')
	Color.new('yellow',				'#FFB62C')
	Color.new('green',				'#91B859')
	Color.new('cyan',				'#39ADB5')
	Color.new('blue',				'#6182B8')
	Color.new('paleblue',			'#8796B0')
	Color.new('purple',				'#7C4DFF')
	Color.new('brown',				'#C17E70')
	Color.new('pink',				'#FF5370')
	Color.new('violet',				'#945EB8')
	Color.new('accent',				'#00BCD4')

elseif v.material_style == 'palenight' then
	-- Palenight theme style

	Color.new('bg',					'#292D3E')
	Color.new('fg1',				'#A6ACCD')
	Color.new('invisibles',			'#4E5579')
	Color.new('comments',			'#676E95')
	Color.new('selection',			'#343B51')
	Color.new('guides',				'#4E5579')
	Color.new('line_numbers',		'#3A3F58')
	Color.new('line_highlight', 	'#1C1F2B')
	Color.new('accent',				'#ab47bc')

elseif v.material_style == 'oceanic' then
	-- Oceanic theme style
	--
	Color.new('bg',					'#0F2330')
	Color.new('fg1',				'#EEFFFF')
	Color.new('invisibles',			'#80869E')
	Color.new('comments',			'#464B5D')
	Color.new('selection',			'#1F2233')
	Color.new('guides',				'#3B3F51')
	Color.new('line_numbers',		'#3B3F51')
	Color.new('line_highlight',		'#0A0C12')
	Color.new('accent',				'#009688')

elseif v.material_style == 'deep ocean' then
	-- Deep ocean theme style

	Color.new('bg',					'#0F111A')
	Color.new('fg1',				'#8F93A2')
	Color.new('invisibles',			'#80869E')
	Color.new('comments',			'#464B5D')
	Color.new('selection',			'#1F2233')
	Color.new('guides',				'#3B3F51')
	Color.new('line_numbers',		'#3B3F51')
	Color.new('line_highlight',		'#0A0C12')
	Color.new('accent',				'#84FFFF')

else
    --v.material_style = 'default'
	-- Default theme style
	Color.new('bg',					'#263238')
	Color.new('fg1',				'#EEFFFF')
	Color.new('invisibles',			'#80869E')
	Color.new('comments',			'#464B5D')
	Color.new('selection',			'#1F2233')
	Color.new('guides',				'#3B3F51')
	Color.new('line_numbers',		'#3B3F51')
	Color.new('line_highlight',		'#0A0C12')
	Color.new('accent',				'#009688')

end

-- Terminal colors

--v.terminal_color_0 = c.black
--v.terminal_color_1 = c.red
--v.terminal_color_2 = c.green
--v.terminal_color_3 = c.yellow
--v.terminal_color_4 = c.blue
--v.terminal_color_5 = c.purple
--v.terminal_color_6 = c.cyan
--v.terminal_color_7 = c.white
--v.terminal_color_8 = c.black
--v.terminal_color_9 = c.red
--v.terminal_color_10 = c.green
--v.terminal_color_11 = c.yellow
--v.terminal_color_12 = c.blue
--v.terminal_color_13 = c.purple
--v.terminal_color_14 = c.cyan
--v.terminal_color_15 = c.white


-- Syntax groups

-- Choose italic comments
if v.material_italics == 1 then
    Group.new('Comment', c.comments, c.none, i) -- italic comments
else
    Group.new('Comment', c.comments, c.none, no) -- normal comments
end

Group.new('Constant', c.yellow, c.none, no) -- any constant
Group.new('String', c.green, c.none, i) -- this is a string
Group.new('Character', c.orange, c.none, no) -- a character constant: 'c', '\n'
Group.new('Boolean', c.orange, c.none, no) -- a boolean constant: TRUE, false
Group.new('Float', c.orange, c.none, no) -- a floating point constant: 2.3e10
Group.new('Identifier', c.blue, c.none, no) -- any variable name
Group.new('Function', c.blue, c.none, no) -- function name (also: methods for classes)
Group.new('Statement', c.purple, c.none, no) -- any statement
Group.new('Conditional', c.purple, c.none, no) -- if, then, else, endif, switch, etc.
Group.new('Repeat', c.purple, c.none, no) -- for, do, while, etc.
Group.new('Label', c.yellow, c.none, no) -- case, default, etc.
Group.new('Operator', c.yellow, c.none, no) -- sizeof", "+", "*", etc.
Group.new('Keyword', c.cyan, c.none, no) -- any other keyword
Group.new('Exception', c.red, c.none, no) -- try, catch, throw
Group.new('PreProc', c.purple, c.none, no) -- generic Preprocessor
Group.new('Include', c.blue, c.none, no) -- preprocessor #include
Group.new('Define', c.cyan, c.none, no) -- preprocessor #define
Group.new('Macro', c.cyan, c.none, no) -- same as Define
Group.new('PreCondit', c.purple, c.none, no) -- preprocessor #if, #else, #endif, etc.
Group.new('Type', c.yellow, c.none, no) -- int, long, char, etc.
Group.new('StorageClass', c.yellow, c.none, no) -- static, register, volatile, etc.
Group.new('Structure', c.purple, c.none, no) -- struct, union, enum, etc.
Group.new('Typedef', c.cyan, c.none, no) -- A typedef
Group.new('Special', c.yellow, c.none, i) -- any special symbol
Group.new('SpecialChar', c.blue, c.none, no) -- special character in a constant
Group.new('Tag', c.orange, c.none, no) -- you can use CTRL-] on this
Group.new('Delimiter', c.green, c.none, no) -- character that needs attention
Group.new('SpecialComment', c.gray, c.none, no) -- special things inside a comment
Group.new('Debug', c.red, c.none, no) -- debugging statements
Group.new('Underlined', c.blue, c.none, ul) -- text that stands out, HTML links
Group.new('Ignore', c.disabled, c.none, no) -- left blank, hidden
Group.new('Error', c.red, c.none, b + ul) -- any erroneous construct
Group.new('Todo', c.yellow, c.none, b + i) -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX


-- Highlight groups

Group.new('ColorColumn', c.fg3, c.bg, no) --  used for the columns set with 'colorcolumn'
Group.new('Conceal', c.blue, c.bg, no) -- placeholder characters substituted for concealed text (see 'conceallevel')
Group.new('Cursor', c.bg, c.fg1, b + r) -- the character under the cursor
Group.new('CursorIM', c.fg, c.none, r) -- like Cursor, but used when in IME mode
Group.new('Directory', c.blue, c.none, b) -- directory names (and other special names in listings)
Group.new('DiffAdd', c.green, c.none, r) -- diff mode: Added line
Group.new('DiffChange', c.orange, c.none, r) --  diff mode: Changed line
Group.new('DiffDelete', c.red, c.none, r) -- diff mode: Deleted line
Group.new('DiffText', c.yellow, c.none, r) -- diff mode: Changed text within a changed line
Group.new('EndOfBuffer', c.invisibles, c.none, no) -- filler lines (~) after the last line in the buffer
Group.new('ErrorMsg', c.fg1, c.bg, no) -- error messages on the command line
Group.new('VertSplit', c.selection, c.none, no) -- the column separating verti-- cally split windows
Group.new('Folded', c.purple, c.bg, i) -- line used for closed folds
Group.new('FoldColumn', c.blue, c.none, no) -- 'foldcolumn'
Group.new('SignColumn', c.fg1, c.none, no) -- column where signs are displayed
Group.new('IncSearch', c.selection, c.white, r) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new('LineNr', c.line_numbers, c.none, no) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new('CursorLineNr', c.accent, c.none, no) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
Group.new('MatchParen', c.cyan, c.none, b) -- The character under the cursor or just before it, if it is a paired bracket, and its match.
Group.new('ModeMsg', c.accent, c.none, no) -- 'showmode' message (e.g., "-- INSERT --")
Group.new('MoreMsg', g.ModeMsg, g.ModeMsg, g.ModeMsg) -- more-prompt
Group.new('NonText', c.gray, c.none, no) -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
Group.new('Normal', c.fg1, c.bg, no) -- normal text
Group.new('Pmenu', c.fg2, c.selection, no) -- Popup menu: normal item.
Group.new('PmenuSel', c.accent, c.disabled, no) -- Popup menu: selected item.
Group.new('PmenuSbar', c.fg2, c.fg1, no) -- Popup menu: scrollbar.
Group.new('PmenuThumb', c.fg1, c.accent, no) -- Popup menu: Thumb of the scrollbar.
Group.new('Question', c.green, c.none, b) -- hit-enter prompt and yes/no questions
Group.new('QuickFixLine', g.Search, g.Search, g.Search) -- Current quickfix item in the quickfix window.
Group.new('qfLineNr', g.Type, g.Type, g.Type)
Group.new('Search', c.selection, c.white, r) -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
Group.new('SpecialKey', c.purple, c.none, no) -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
Group.new('SpellBad', c.red, c.none, i + uc) -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
Group.new('SpellCap', c.blue, c.none, i + uc) -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
Group.new('SpellLocal', c.cyan, c.none, i + uc) -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
Group.new('SpellRare', c.purple, c.none, i + uc) -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
Group.new('StatusLine', c.fg1, c.selection, no) -- status line of current window
Group.new('StatusLineNC', c.comments, c.selection, no) -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
--Group.new('StatusLineTerm', g.StatusLine, g.StatusLine, g.StatusLine) -- status line of current :terminal window
Group.new('StatusLineTerm', c.bg, c.green, g.StatusLine) -- status line of current :terminal window
Group.new('StatusLineTermNC', g.StatusLineNC, g.StatusLineNC, g.StatusLineNC) -- status line of non-current :terminal window
Group.new('TabLineFill', c.fg1, c.selection, no)
Group.new('TabLineSel', c.bg, c.accent, no)
Group.new('TabLine', g.TabLineFill, g.TabLineFill, g.TabLineFill)
Group.new('Title', c.green, c.none, b) -- titles for output from ":set all", ":autocmd" etc.
Group.new('Visual', c.fg2, c.selection, no) -- Visual mode selection
Group.new('VisualNOS', g.Visual, g.Visual, g.Visual) -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new('WarningMsg', c.red, c.none, no) --  warning messages
Group.new('WildMenu', c.orange, c.bg, b) --  current match in 'wildmenu' completion
Group.new('CursorColumn', c.none, c.selection, no) -- Current cursor column highlight
Group.new('CursorLine', c.none, c.selection, no) -- Current cursor line highlight
Group.new('ToolbarLine', c.fg1, c.disabled, no)
Group.new('ToolbarButton', c.fg1, c.bg, b)
Group.new('NormalMode', c.accent, c.none, r)
Group.new('InsertMode', c.green, c.none, r)
Group.new('ReplaceMode', c.red, c.none, r)
Group.new('VisualMode', c.purple, c.none, r)
Group.new('CommandMode', c.gray, c.none, r)
Group.new('Warnings', c.orange, c.none, r)


-- Language-specific highlighting

-- C
Group.new('cOperator', c.cyan, c.none, no)
Group.new('cStructure', c.yellow, c.none, no)
-- CoffeeScript
Group.new('coffeeExtendedOp', c.fg1, c.none, no)
Group.new('coffeeSpecialOp', c.fg2, c.none, no)
Group.new('coffeeCurly', c.orange, c.none, no)
Group.new('coffeeParen', c.fg3, c.none, no)
Group.new('coffeeBracket', c.orange, c.none, no)
-- Clojure
Group.new('clojureKeyword', c.blue, c.none, no)
Group.new('clojureCond', c.orange, c.none, no)
Group.new('clojureSpecial', c.orange, c.none, no)
Group.new('clojureDefine', c.orange, c.none, no)
Group.new('clojureFunc', c.yellow, c.none, no)
Group.new('clojureRepeat', c.yellow, c.none, no)
Group.new('clojureCharacter', c.cyan, c.none, no)
Group.new('clojureStringEscape', c.cyan, c.none, no)
Group.new('clojureException', c.red, c.none, no)
Group.new('clojureRegexp', c.cyan, c.none, no)
Group.new('clojureRegexpEscape', c.cyan, c.none, no)
Group.new('clojureRegexpCharClass', c.fg3, c.none, b)
Group.new('clojureRegexpMod', g.clojureRegexpCharClass, g.clojureRegexpCharClass, g.clojureRegexpCharClass)
Group.new('clojureRegexpQuantifier', g.clojureRegexpCharClass, g.clojureRegexpCharClass, g.clojureRegexpCharClass)
Group.new('clojureParen', c.fg3, c.none, no)
Group.new('clojureAnonArg', c.yellow, c.none, no)
Group.new('clojureVariable', c.blue, c.none, no)
Group.new('clojureMacro', c.orange, c.none, no)
Group.new('clojureMeta', c.yellow, c.none, no)
Group.new('clojureDeref', c.yellow, c.none, no)
Group.new('clojureQuote', c.yellow, c.none, no)
Group.new('clojureUnquote', c.yellow, c.none, no)
-- CSS
Group.new('cssBraces', c.blue, c.none, no)
Group.new('cssFunctionName', c.yellow, c.none, no)
Group.new('cssIdentifier', c.orange, c.none, no)
Group.new('cssClassName', c.green, c.none, no)
Group.new('cssColor', c.blue, c.none, no)
Group.new('cssSelectorOp', c.blue, c.none, no)
Group.new('cssSelectorOp2', c.blue, c.none, no)
Group.new('cssImportant', c.green, c.none, no)
Group.new('cssVendor', c.fg1, c.none, no)
Group.new('cssTextProp', c.cyan, c.none, no)
Group.new('cssAnimationProp', c.cyan, c.none, no)
Group.new('cssUIProp', c.yellow, c.none, no)
Group.new('cssTransformProp', c.cyan, c.none, no)
Group.new('cssTransitionProp', c.cyan, c.none, no)
Group.new('cssPrintProp', c.cyan, c.none, no)
Group.new('cssPositioningProp', c.yellow, c.none, no)
Group.new('cssBoxProp', c.cyan, c.none, no)
Group.new('cssFontDescriptorProp', c.cyan, c.none, no)
Group.new('cssFlexibleBoxProp', c.cyan, c.none, no)
Group.new('cssBorderOutlineProp', c.cyan, c.none, no)
Group.new('cssBackgroundProp', c.cyan, c.none, no)
Group.new('cssMarginProp', c.cyan, c.none, no)
Group.new('cssListProp', c.cyan, c.none, no)
Group.new('cssTableProp', c.cyan, c.none, no)
Group.new('cssFontProp', c.cyan, c.none, no)
Group.new('cssPaddingProp', c.cyan, c.none, no)
Group.new('cssDimensionProp', c.cyan, c.none, no)
Group.new('cssRenderProp', c.cyan, c.none, no)
Group.new('cssColorProp', c.cyan, c.none, no)
Group.new('cssGeneratedContentProp', c.cyan, c.none, no)
-- DTD
Group.new('dtdFunction', c.gray, c.none, no)
Group.new('dtdTagName', c.purple, c.none, no)
Group.new('dtdParamEntityPunct', c.gray, c.none, no)
Group.new('dtdParamEntityDPunct', c.gray, c.none, no)
-- Diff
Group.new('diffAdded', c.green, c.none, no)
Group.new('diffRemoved', c.red, c.none, no)
Group.new('diffChanged', c.cyan, c.none, no)
Group.new('diffFile', c.orange, c.none, no)
Group.new('diffNewFile', c.yellow, c.none, no)
Group.new('diffLine', c.blue, c.none, no)
-- Elixir
Group.new('elixirDocString', g.Comment, g.Comment, g.Comment)
Group.new('elixirStringDelimiter', c.green, c.none, no)
Group.new('elixirInterpolationDelimiter', c.cyan, c.none, no)
Group.new('elixirModuleDeclaration', c.yellow, c.none, no)
-- Go
Group.new('goDirective', c.cyan, c.none, no)
Group.new('goConstants', c.purple, c.none, no)
Group.new('goDeclaration', g.Keyword, g.Keyword, g.Keyword)
Group.new('goDeclType', c.blue, c.none, no)
Group.new('goBuiltins', c.orange, c.none, no)
-- Haskell
Group.new('haskellType', c.fg1, c.none, no)
Group.new('haskellIdentifier', c.fg1, c.none, no)
Group.new('haskellSeparator', c.fg1, c.none, no)
Group.new('haskellDelimiter', c.fg3, c.none, no)
Group.new('haskellOperators', c.blue, c.none, no)
Group.new('haskellBacktick', c.orange, c.none, no)
Group.new('haskellStatement', c.orange, c.none, no)
Group.new('haskellConditional', c.orange, c.none, no)
Group.new('haskellLet', c.cyan, c.none, no)
Group.new('haskellDefault', c.cyan, c.none, no)
Group.new('haskellWhere', c.cyan, c.none, no)
Group.new('haskellBottom', c.cyan, c.none, no)
Group.new('haskellBlockKeywords', c.cyan, c.none, no)
Group.new('haskellImportKeywords', c.cyan, c.none, no)
Group.new('haskellDeclKeyword', c.cyan, c.none, no)
Group.new('haskellDeriving', c.cyan, c.none, no)
Group.new('haskellAssocType', c.cyan, c.none, no)
Group.new('haskellNumber', c.purple, c.none, no)
Group.new('haskellPragma', c.purple, c.none, no)
Group.new('haskellString', c.green, c.none, no)
Group.new('haskellChar', c.green, c.none, no)
-- HTML (keep consistent with Markdown, below)
Group.new('htmlTag', c.blue, c.none, no)
Group.new('htmlEndTag', c.blue, c.none, no)
Group.new('htmlTagName', c.purple, c.none, no)
Group.new('htmlArg', c.cyan, c.none, no)
Group.new('htmlScriptTag', c.purple, c.none, no)
Group.new('htmlTagN', c.fg1, c.none, no)
Group.new('htmlSpecialTagName', c.cyan, c.none, b)
Group.new('htmlLink', c.blue, c.none, ul)
Group.new('htmlSpecialChar', c.orange, c.none, no)
Group.new('htmlBold', c.fg1, c.none, b)
Group.new('htmlBoldUnderline', c.fg2, c.none, b, ul)
Group.new('htmlBoldItalic', c.fg1, c.none, b + i)
Group.new('htmlBoldUnderlineItalic', c.fg2, c.none, b + i + ul)
Group.new('htmlUnderline', c.fg1, c.none, ul)
Group.new('htmlUnderlineItalic', c.fg2, c.none, i + ul)
Group.new('htmlItalic', c.blue, c.none, i)
Group.new('htmlH1', c.blue, c.none, b)
Group.new('htmlH2', c.cyan, c.none, b)
Group.new('htmlH3', c.green, c.none, b)
Group.new('htmlH4', c.yellow, c.none, b)
Group.new('htmlH5', c.yellow, c.none, no)
Group.new('htmlH6', c.yellow, c.none, no)
-- Java
Group.new('javaAnnotation', c.blue, c.none, no)
Group.new('javaDocTags', c.cyan, c.none, no)
Group.new('javaCommentTitle', g.vimCommentTitle, g.vimCommentTitle, g.vimCommentTitle)
Group.new('javaParen', c.fg3, c.none, no)
Group.new('javaParen1', c.fg3, c.none, no)
Group.new('javaParen2', c.fg3, c.none, no)
Group.new('javaParen3', c.fg3, c.none, no)
Group.new('javaParen4', c.fg3, c.none, no)
Group.new('javaParen5', c.fg3, c.none, no)
Group.new('javaOperator', c.orange, c.none, no)
Group.new('javaVarArg', c.green, c.none, no)
-- JavaScript
Group.new('javaScriptBraces', c.fg1, c.none, no)
Group.new('javaScriptFunction', c.cyan, c.none, no)
Group.new('javaScriptIdentifier', c.red, c.none, no)
Group.new('javaScriptMember', c.blue, c.none, no)
Group.new('javaScriptNumber', c.purple, c.none, no)
Group.new('javaScriptNull', c.purple, c.none, no)
Group.new('javaScriptParens', c.fg3, c.none, no)
Group.new('javascriptImport', c.cyan, c.none, no)
Group.new('javascriptExport', c.cyan, c.none, no)
Group.new('javascriptClassKeyword', c.cyan, c.none, no)
Group.new('javascriptClassExtends', c.cyan, c.none, no)
Group.new('javascriptDefault', c.cyan, c.none, no)
Group.new('javascriptClassName', c.yellow, c.none, no)
Group.new('javascriptClassSuperName', c.yellow, c.none, no)
Group.new('javascriptGlobal', c.yellow, c.none, no)
Group.new('javascriptEndColons', c.fg1, c.none, no)
Group.new('javascriptFuncArg', c.fg1, c.none, no)
Group.new('javascriptGlobalMethod', c.fg1, c.none, no)
Group.new('javascriptNodeGlobal', c.fg1, c.none, no)
Group.new('javascriptBOMWindowProp', c.fg1, c.none, no)
Group.new('javascriptArrayMethod', c.fg1, c.none, no)
Group.new('javascriptArrayStaticMethod', c.fg1, c.none, no)
Group.new('javascriptCacheMethod', c.fg1, c.none, no)
Group.new('javascriptDateMethod', c.fg1, c.none, no)
Group.new('javascriptMathStaticMethod', c.fg1, c.none, no)
Group.new('javascriptURLUtilsProp', c.fg1, c.none, no)
Group.new('javascriptBOMNavigatorProp', c.fg1, c.none, no)
Group.new('javascriptDOMDocMethod', c.fg1, c.none, no)
Group.new('javascriptDOMDocProp', c.fg1, c.none, no)
Group.new('javascriptBOMLocationMethod', c.fg1, c.none, no)
Group.new('javascriptBOMWindowMethod', c.fg1, c.none, no)
Group.new('javascriptStringMethod', c.fg1, c.none, no)
Group.new('javascriptVariable', c.orange, c.none, no)
Group.new('javascriptIdentifier', c.orange, c.none, no)
Group.new('javascriptClassSuper', c.orange, c.none, no)
Group.new('javascriptFuncKeyword', c.cyan, c.none, no)
Group.new('javascriptAsyncFunc', c.cyan, c.none, no)
Group.new('javascriptClassStatic', c.orange, c.none, no)
Group.new('javascriptOperator', c.red, c.none, no)
Group.new('javascriptForOperator', c.red, c.none, no)
Group.new('javascriptYield', c.red, c.none, no)
Group.new('javascriptExceptions', c.red, c.none, no)
Group.new('javascriptMessage', c.red, c.none, no)
Group.new('javascriptTemplateSB', c.cyan, c.none, no)
Group.new('javascriptTemplateSubstitution', c.fg1, c.none, no)
Group.new('javascriptLabel', c.fg1, c.none, no)
Group.new('javascriptObjectLabel', c.fg1, c.none, no)
Group.new('javascriptPropertyName', c.fg1, c.none, no)
Group.new('javascriptLogicSymbols', c.fg1, c.none, no)
Group.new('javascriptArrowFunc', c.yellow, c.none, no)
Group.new('javascriptDocParamName', c.fg3, c.none, no)
Group.new('javascriptDocTags', c.fg3, c.none, no)
Group.new('javascriptDocNotation', c.fg3, c.none, no)
Group.new('javascriptDocParamType', c.fg3, c.none, no)
Group.new('javascriptDocNamedParamType', c.fg3, c.none, no)
Group.new('javascriptBrackets', c.fg1, c.none, no)
Group.new('javascriptDOMElemAttrs', c.fg1, c.none, no)
Group.new('javascriptDOMEventMethod', c.fg1, c.none, no)
Group.new('javascriptDOMNodeMethod', c.fg1, c.none, no)
Group.new('javascriptDOMStorageMethod', c.fg1, c.none, no)
Group.new('javascriptHeadersMethod', c.fg1, c.none, no)
Group.new('javascriptAsyncFuncKeyword', c.red, c.none, b)
Group.new('javascriptAwaitFuncKeyword', c.red, c.none, b)
Group.new('jsClassKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsExtendsKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsExportDefault', c.blue, c.none, b)
Group.new('jsTemplateBraces', c.cyan, c.none, no)
Group.new('jsGlobalNodeObjects', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsGlobalObjects', g.Keyword, g.Keyword, g.Keyword)
Group.new('jsFunction', g.Function, g.Function, g.Function)
Group.new('jsFuncParens', c.orange, c.none, no)
Group.new('jsParens', c.red, c.none, no)
Group.new('jsNull', c.purple, c.none, no)
Group.new('jsUndefined', g.ErrorMsg, g.ErrorMsg, g.ErrorMsg)
Group.new('jsClassDefinition', c.yellow, c.none, no)
Group.new('jsObjectProp', g.Identifier, g.Identifier, g.Identifier)
Group.new('jsObjectKey', c.blue, c.none, no)
Group.new('jsFunctionKey', c.blue, c.none, no)
Group.new('jsBracket', c.red, c.none, no)
Group.new('jsObjectColon', c.red, c.none, no)
Group.new('jsFuncArgs', c.blue, c.none, no)
Group.new('jsFuncBraces', c.blue, c.none, no)
Group.new('jsVariableDef', c.fg1, c.none, no)
Group.new('jsObjectBraces', g.Special, g.Special, g.Special)
Group.new('jsObjectValue', c.green, c.none, no)
Group.new('jsClassBlock', c.blue, c.none, no)
Group.new('jsFutureKeys', c.orange, c.none, b)
Group.new('jsFuncArgs', c.blue, c.none, no)
Group.new('jsStorageClass', c.blue, c.none, no)
Group.new('jsxRegion', c.blue, c.none, no)
-- JSON
Group.new('jsonKeyword', c.green, c.none, no)
Group.new('jsonQuote', c.green, c.none, no)
Group.new('jsonBraces', c.fg1, c.none, no)
Group.new('jsonString', c.fg1, c.none, no)
-- Lua
Group.new('luaIn', c.red, c.none, no)
Group.new('luaFunction', c.cyan, c.none, no)
Group.new('luaTable', c.orange, c.none, no)
-- Markdown (keep consistent with HTML, above
Group.new('markdownItalic', c.fg3, c.none, i)
Group.new('markdownH1', g.htmlH1, g.htmlH1, g.htmlH1)
Group.new('markdownH2', g.htmlH2, g.htmlH2, g.htmlH2)
Group.new('markdownH3', g.htmlH3, g.htmlH3, g.htmlH3)
Group.new('markdownH4', g.htmlH4, g.htmlH4, g.htmlH4)
Group.new('markdownH5', g.htmlH5, g.htmlH5, g.htmlH5)
Group.new('markdownH6', g.htmlH6, g.htmlH6, g.htmlH6)
Group.new('markdownCode', c.purple, c.none, no)
Group.new('mkdCode', g.markdownCode, g.markdownCode, g.markdownCode)
Group.new('markdownCodeBlock', c.cyan, c.none, no)
Group.new('markdownCodeDelimiter', c.orange, c.none, no)
Group.new('mkdCodeDelimiter', g.markdownCodeDelimiter, g.markdownCodeDelimiter, g.markdownCodeDelimiter)
Group.new('markdownBlockquote', c.gray, c.none, no)
Group.new('markdownListMarker', c.gray, c.none, no)
Group.new('markdownOrderedListMarker', c.gray, c.none, no)
Group.new('markdownRule', c.gray, c.none, no)
Group.new('markdownHeadingRule', c.gray, c.none, no)
Group.new('markdownUrlDelimiter', c.fg3, c.none, no)
Group.new('markdownLinkDelimiter', c.fg3, c.none, no)
Group.new('markdownLinkTextDelimiter', c.fg3, c.none, no)
Group.new('markdownHeadingDelimiter', c.orange, c.none, no)
Group.new('markdownUrl', c.purple, c.none, no)
Group.new('markdownUrlTitleDelimiter', c.green, c.none, no)
Group.new('markdownLinkText', g.htmlLink, g.htmlLink, g.htmlLink)
Group.new('markdownIdDeclaration', g.markdownLinkText, g.markdownLinkText, g.markdownLinkText)
-- MoonScript
Group.new('moonSpecialOp', c.fg3, c.none, no)
Group.new('moonExtendedOp', c.fg3, c.none, no)
Group.new('moonFunction', c.fg3, c.none, no)
Group.new('moonObject', c.yellow, c.none, no)
-- Objective-C
Group.new('objcTypeModifier', c.red, c.none, no)
Group.new('objcDirective', c.blue, c.none, no)
-- PureScript
Group.new('purescriptModuleKeyword', c.cyan, c.none, no)
Group.new('purescriptModuleName', c.red, c.none, b)
Group.new('purescriptWhere', c.cyan, c.none, no)
Group.new('purescriptDelimiter', c.fg2, c.none, no)
Group.new('purescriptType', g.Type, g.Type, g.Type)
Group.new('purescriptImportKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('purescriptHidingKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('purescriptAsKeyword', g.Keyword, g.Keyword, g.Keyword)
Group.new('purescriptStructure', g.Structure, g.Structure, g.Structure)
Group.new('purescriptOperator', g.Operator, g.Operator, g.Operator)
Group.new('purescriptTypeVar', g.Type, g.Type, g.Type)
Group.new('purescriptConstructor', g.Function, g.Function, g.Function)
Group.new('purescriptFunction', g.Function, g.Function, g.Function)
Group.new('purescriptConditional', g.Conditional, g.Conditional, g.Conditional)
Group.new('purescriptBacktick', c.orange, c.none, no)
-- Python
Group.new('pythonCoding', g.Comment, g.Comment, g.Comment)
-- Ruby
Group.new('rubyStringDelimiter', c.green, c.none, no)
Group.new('rubyInterpolationDelimiter', c.cyan, c.none, no)
-- Rust
Group.new('rustSelf', c.blue, c.none, b)
Group.new('rustPanic', c.red, c.none, b)
Group.new('rustAssert', c.blue, c.none, b)
-- Scala
Group.new('scalaNameDefinition', c.fg1, c.none, no)
Group.new('scalaCaseFollowing', c.fg1, c.none, no)
Group.new('scalaCapitalWord', c.fg1, c.none, no)
Group.new('scalaTypeExtension', c.fg1, c.none, no)
Group.new('scalaKeyword', c.red, c.none, b)
Group.new('scalaKeywordModifier', c.red, c.none, no)
Group.new('scalaSpecial', c.cyan, c.none, no)
Group.new('scalaOperator', c.fg1, c.none, no)
Group.new('scalaTypeDeclaration', c.yellow, c.none, no)
Group.new('scalaTypeTypePostDeclaration', c.yellow, c.none, no)
Group.new('scalaInstanceDeclaration', c.fg1, c.none, no)
Group.new('scalaInterpolation', c.cyan, c.none, no)
-- TypeScript
Group.new('typeScriptReserved', c.cyan, c.none, no)
Group.new('typeScriptLabel', g.Label, g.Label, g.Label)
Group.new('typeScriptFuncKeyword', g.Function, g.Function, g.Function)
Group.new('typeScriptIdentifier', g.Identifier, g.Identifier, g.Identifier)
Group.new('typeScriptBraces', c.red1, c.none, no)
Group.new('typeScriptEndColons', c.fg1, c.none, no)
Group.new('typeScriptDOMObjects', c.fg1, c.none, no)
Group.new('typeScriptAjaxMethods', g.Function, g.Function, g.Function)
Group.new('typeScriptLogicSymbols', c.fg1, c.none, no)
Group.new('typeScriptDocSeeTag', g.Comment, g.Comment, g.Comment)
Group.new('typeScriptDocParam', g.Comment, g.Comment, g.Comment)
Group.new('typeScriptDocTags', g.vimCommentTitle, g.vimCommentTitle, g.vimCommentTitle)
Group.new('typeScriptGlobalObjects', g.Keyword, g.Keyword, g.Keyword)
Group.new('typeScriptParens', c.blue1, c.none, no)
Group.new('typeScriptOpSymbols', g.Operator, g.Operator, g.Operator)
Group.new('typeScriptHtmlElemProperties', g.Special, g.Special, g.Special)
Group.new('typeScriptNull', c.purple, c.none, b)
Group.new('typeScriptInterpolationDelimiter', c.cyan, c.none, no)
-- XML
Group.new('xmlTag', c.blue, c.none, no)
Group.new('xmlEndTag', c.blue, c.none, no)
Group.new('xmlTagName', c.blue, c.none, no)
Group.new('xmlEqual', c.blue, c.none, no)
Group.new('docbkKeyword', c.cyan, c.none, b)
Group.new('xmlDocTypeDecl', c.gray, c.none, no)
Group.new('xmlDocTypeKeyword', c.purple, c.none, no)
Group.new('xmlCdataStart', c.gray, c.none, no)
Group.new('xmlCdataCdata', c.purple, c.none, no)
Group.new('xmlAttrib', c.cyan, c.none, no)
Group.new('xmlProcessingDelim', c.gray, c.none, no)
Group.new('xmlAttribPunct', c.gray, c.none, no)
Group.new('xmlEntity', c.orange, c.none, no)
Group.new('xmlEntityPunct', c.orange, c.none, no)
-- Vim
Group.new('vimCommentTitle', c.blue, c.none, b)
Group.new('vimNotation', c.orange, c.none, no)
Group.new('vimBracket', c.orange, c.none, no)
Group.new('vimMapModKey', c.orange, c.none, no)
Group.new('vimCommand', c.accent, c.none, b)
Group.new('vimLet', c.blue, c.none, no)
Group.new('vimNorm', c.blue, c.none, no)
Group.new('vimFuncSID', g.Function, g.Function, g.Function)
Group.new('vimFunction', g.Function, g.Function, g.Function)
Group.new('vimGroup', c.blue, c.none, no)
Group.new('vimHiGroup', g.Type, g.Type, g.Type)
Group.new('vimSetSep', c.fg3, c.none, no)
Group.new('vimSep', c.fg3, c.none, no)
Group.new('vimContinue', c.yellow, c.none, no)


-- Plugin highlight

-- Git Commit (tpope/vim-git)
Group.new('gitcommitSelectedFile', c.green, c.none, no)
Group.new('gitcommitDiscardedFile', c.red, c.none, no)
-- Gitgutter (airblade/vim-gitgutter)
Group.new('GitGutterAdd', c.green, c.none, b)
Group.new('GitGutterChange', c.orange, c.none, b)
Group.new('GitGutterDelete', c.red, c.none, b)
Group.new('GitGutterChangeDelete', c.red1, c.none, b)
-- Git Messenger (rhysd/git-messenger.vim)
Group.new('gitmessengerPopupNormal', g.CursorLine, g.CursorLine, g.CursorLine) -- Normal color in popup window
Group.new('gitmessengerHeader', g.CursorLine, g.CursorLine, g.CursorLine) -- Header such as 'Commit:', 'Author:'
Group.new('gitmessengerHash', g.CursorLine, g.CursorLine, g.CursorLine) -- Commit hash at 'Commit:' header
Group.new('gitmessengerHistory', g.CursorLine, g.CursorLine, g.CursorLine) -- History number at 'History:' header
-- NvimTree (kyazdani42/nvim-tree.lua)
Group.new('NvimTreeFolderName', c.fg1, c.none, no)
Group.new('NvimTreeFolderIcon', c.accent, c.none, no)
Group.new('NvimTreeExecFile', c.green, c.none, no)
Group.new('NvimTreeImageFile', c.yellow, c.none, no)
Group.new('NvimTreeEmptyFolderName', c.fg1, c.none, no)
Group.new('NvimTreeIndentMarker', c.white, c.none, no)
--Group.new('NvimTreeMarkdownFile', c.blue, c.none, no)
--Group.new('NvimTreeSpecialFile', c.red, c.none, no)
--Group.new('NvimTreeRootFolder', c.blue, c.none, no)
--Group.new('NvimTreeLicenseIcon', c.blue, c.none, no)
--Group.new('NvimTreeYamlIcon', c.blue, c.none, no)
--Group.new('NvimTreeTomlIcon', c.blue, c.none, no)
--Group.new('NvimTreeGitignoreIcon', c.blue, c.none, no)
--Group.new('NvimTreeJsonIcon', c.blue, c.none, no)
--Group.new('NvimTreeLuaIcon', c.blue, c.none, no)
--Group.new('NvimTreePythonIcon', c.blue, c.none, no)
--Group.new('NvimTreeShellIcon', c.blue, c.none, no)
--Group.new('NvimTreeJavascriptIcon', c.blue, c.none, no)
--Group.new('NvimTreeCIcon', c.blue, c.none, no)
--Group.new('NvimTreeReactIcon', c.blue, c.none, no)
--Group.new('NvimTreeHtmlIcon', c.blue, c.none, no)
--Group.new('NvimTreeRustIcon', c.blue, c.none, no)
--Group.new('NvimTreeVimIcon', c.blue, c.none, no)
--Group.new('NvimTreeTypescriptIcon', c.blue, c.none, no)
--Group.new('NvimTreeGitDirty', c.blue, c.none, no)
--Group.new('NvimTreeGitStaged', c.blue, c.none, no)
--Group.new('NvimTreeGitMerge', c.blue, c.none, no)
--Group.new('NvimTreeGitRenamed', c.blue, c.none, no)
--Group.new('NvimTreeGitNew', c.blue, c.none, no)
--Group.new('NvimTreeSymlink', c.blue, c.none, no)
-- NerdTree (preservim/nerdtree)
Group.new('NERDTreeDir', c.blue, c.none, b)
Group.new('NERDTreeDirSlash', c.fg1, c.none, no)
Group.new('NERDTreeOpenable', c.blue, c.none, no)
Group.new('NERDTreeClosable', c.blue, c.none, no)
Group.new('NERDTreeFile', c.fg1, c.none, no)
Group.new('NERDTreeExecFile', c.green, c.none, no)
Group.new('NERDTreeUp', c.red, c.none, no)
Group.new('NERDTreeCWD', c.purple, c.none, no)
Group.new('NERDTreeHelp', c.fg1, c.none, no)
Group.new('NERDTreeToggleOn', c.green, c.none, no)
Group.new('NERDTreeToggleOff', c.red, c.none, no)
-- Netrw (vim builtin)
Group.new('netrwDir', c.blue, c.none, no)
Group.new('netrwClassify', c.blue, c.none, no)
Group.new('netrwLink', c.grey, c.none, no)
Group.new('netrwSymLink', c.fg1, c.none, no)
Group.new('netrwExe', c.yellow, c.none, no)
Group.new('netrwComment', c.grey, c.none, no)
Group.new('netrwList', c.blue, c.none, no)
Group.new('netrwHelpCmd', c.cyan, c.none, no)
Group.new('netrwCmdSep', c.fg3, c.none, no)
Group.new('netrwVersion', c.green, c.none, no)
-- Which Key (liuchengxu/vim-which-key)
Group.new('WhichKey', g.Function, g.Function, g.Function)
Group.new('WhichKeySeperator', c.purple, c.none, no)
Group.new('WhichKeyGroup', g.Identifier, g.Identifier, g.Identifier)
Group.new('WhichKeyDesc', g.Operator, g.Operator, g.Operator)


-- NeoVim built in

-- +- Neovim Support -+
 Group.new("healthError",c.error, c.fg2)
 Group.new("healthSuccess",c.green, c.bg)
 Group.new("healthWarning",c.yellow, c.bg)
 Group.new("TermCursorNC",c.fg1, c.bg)

-- LSP Groups (descriptions and ordering from `:h lsp-highlight`)
Group.new("LspDiagnosticsError", c.error, c.none) -- used for "Error" diagnostic virtual text
Group.new("LspDiagnosticsErrorSign", c.error, c.none) -- used for "Error" diagnostic signs in sign column
Group.new("LspDiagnosticsErrorFloating", c.error, c.none) -- used for "Error" diagnostic messages in the diagnostics float
Group.new("LspDiagnosticsWarning", c.orange, c.none) -- used for "Warning" diagnostic virtual text
Group.new("LspDiagnosticsWarningSign", c.orange, c.none) -- used for "Warning" diagnostic signs in sign column
Group.new("LspDiagnosticsWarningFloating", c.orange, c.none) -- used for "Warning" diagnostic messages in the diagnostics float
Group.new("LSPDiagnosticsInformation", c.blue, c.none) -- used for "Information" diagnostic virtual text
Group.new("LspDiagnosticsInformationSign", c.blue, c.none)  -- used for "Information" diagnostic signs in sign column
Group.new("LspDiagnosticsInformationFloating", c.blue, c.none) -- used for "Information" diagnostic messages in the diagnostics float
Group.new("LspDiagnosticsHint", c.yellow, c.none)  -- used for "Hint" diagnostic virtual text
Group.new("LspDiagnosticsHintSign", c.yellow, c.none) -- used for "Hint" diagnostic signs in sign column
Group.new("LspDiagnosticsHintFloating", c.yellow, c.none) -- used for "Hint" diagnostic messages in the diagnostics float
Group.new("LspReferenceText", c.purple, c.none) -- used for highlighting "text" references
Group.new("LspReferenceRead", c.purple, c.none) -- used for highlighting "read" references
Group.new("LspReferenceWrite", c.purple, c.none) -- used for highlighting "write" references

-- Nvim Treesitter Groups (descriptions and ordering from `:h nvim-treesitter-highlights`)
Group.new("TSError", g.Error, c.none, b) -- For syntax/parser errors
Group.new("TSPunctDelimiter", g.Delimiter, c.none) -- For delimiters ie: `.
Group.new("TSPunctBracket", c.fg3, nil) -- For brackets and parens
-- Group.new("TSPunctSpecial"       , c.fg     , nil) -- For special punctutation that does not fall in the catagories before
Group.new("TSConstant", g.Constant, c.none) -- For constants
Group.new("TSConstBuiltin", g.Constant, c.none) -- For constant that are built in the language: `nil` in Lua
Group.new("TSConstMacro", g.Constant, c.none) -- For constants that are defined by macros: `NULL` in C
Group.new("TSString", g.String, c.none) -- For strings
Group.new("TSStringRegex",c.red , nil) -- For regexes
Group.new("TSStringEscape",c.red, nil) -- For escape characters within a string
Group.new("TSCharacter", g.Character, c.none) -- For characters
Group.new("TSNumber", g.Number, c.none) -- For integers
Group.new("TSBoolean", g.Boolean, c.none) -- For booleans
Group.new("TSFloat", g.Float, c.none) -- For floats
Group.new("TSFunction", g.Function, c.none) -- For function (calls and definitions
Group.new("TSFuncBuiltin", g.Function, c.none) -- For builtin functions: `table.insert` in Lua
Group.new("TSFuncMacro", g.Function, c.none) -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
Group.new("TSParameter", c.red, c.none, s.none) -- For parameters of a function.
-- Group.new("TSParameterReference" , g.TSParameter     , nil) -- For references to parameters of a function.
Group.new("TSMethod", g.Function, c.none) -- For method calls and definitions.
Group.new("TSField", c.red , c.none  , s.none) -- For fields.
-- Group.new("TSProperty"    , TSField , c.none  , s.none) -- Same as `TSField`.
-- Group.new("TSConstructor"        , c.magenta_alt       , c.none)  -- For constructor calls and definitions: `{}` in Lua, and Java constructors
Group.new("TSConditional", g.Conditional, c.none) -- For keywords related to conditionnals
Group.new("TSRepeat", g.Repeat, c.none) -- For keywords related to loops
Group.new("TSLabel", g.Label, c.none) -- For labels: `label:` in C and `:label:` in Lua
Group.new("TSOperator", g.Operator, c.none) -- For any operator: `+`, but also `->` and `*` in C
Group.new("TSKeyword", g.Keyword, c.none) -- For keywords that don't fall in previous categories.
-- Group.new("TSKeywordFunction"    , c.magenta_alt       , c.none  , s.none) -- For keywords used to define a fuction.
Group.new("TSException", g.Exception, c.none) -- For exception related keywords.
Group.new("TSType", g.Type, c.none, s.none) -- For types.
Group.new("TSTypeBuiltin", g.Type, c.none, s.none) -- For builtin types (you guessed it, right ?).
Group.new("TSStructure", g.Structure, c.none) -- This is left as an exercise for the reader.
Group.new("TSInclude", g.Include, c.none) -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
-- Group.new("TSAnnotation"         , c.blue_nuanced_bg , c.none) -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
-- Group.new("TSText"             , c.fg              , c.bg           , b) -- For strings considered text in a markup language.
-- Group.new("TSStrong"             , c.fg              , c.bg           , b) -- For text to be represented with strong.
-- Group.new("TSEmphasis"            , c.blue_alt          , c.none  , b) -- For text to be represented with emphasis.
-- Group.new("TSUnderline"            , c.blue_alt          , c.none  , b) -- TSUnderline
-- Group.new("TSTitle"              , c.cyan_nuanced    , c.none) -- Text that is part of a title.
-- Group.new("TSLiteral"            , c.blue_alt          , c.none  , b) -- Literal text.
-- Group.new("TSURI"           , c.cyan              , c.none  , s.none) -- Any URI like a link or email.
 Group.new("TSVariable", c.cyan, c.none, s.none) -- Any URI like a link or email.
-- Group.new("TSVariableBuiltin" , g.magenta_alt_other     , nil) -- Variable names that are defined by the languages, like `this` or `self`.
