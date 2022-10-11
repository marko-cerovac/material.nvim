local colors   = require "material.colors"
local settings = require "material.config".settings
local styles   = settings.styles

local m = colors.main
local e = colors.editor
local g = colors.git
local l = colors.lsp
local s = colors.syntax
local b = colors.backgrounds

local apply_user_styles = function (hl_group, user_settings)
    vim.tbl_extend("force", hl_group, user_settings)
end

-- apply conditional colors
require "material.conditionals"

local M = {}

---main highlight functions
M.main_highlights = {}

---async highlight functions
M.async_highlights = {}

---regular Vim syntax highlights
M.main_highlights.syntax = function ()
    local syntax_hls = {
        Comment        = { fg = s.comments },
        Conditional    = { fg = s.keyword },
        Function       = { fg = s.fn },
        Identifier     = { fg = e.fg },
        Keyword        = { fg = s.keyword },
        Repeat         = { fg = s.keyword },
        String         = { fg = s.string },
        Type           = { fg = s.type },
        StorageClass   = { fg = m.cyan }, -- static, register, volatile, etc.
        Structure      = { fg = s.type },
        SpecialComment = { link = "Comment" }, -- special things inside a comment
        Constant       = { fg = m.yellow },
        Number         = { fg = s.value },
        Character      = { link = "Number" },
        Boolean        = { link = "Number" },
        Float          = { link = "Number" },
        Statement      = { fg = m.cyan },
        Label          = { fg = s.keyword }, -- case, default, etc.
        Operator       = { fg = s.operator },
        Exception      = { fg = m.red },
        Macro          = { fg = m.cyan },
        Include        = { link = "Macro" },
        -- Define         = { link = "Macro" },
        PreProc     = { link = "Macro" },
        -- PreCondit   = { link = "Macro" },
        -- Typedef        = { link = "Operator" },
        Special        = { fg = m.red },
        SpecialChar    = { fg = e.disabled },
        Tag            = { fg = m.red },
        Delimiter      = { fg = s.operator }, -- ;
        Debug          = { fg = m.red },
        htmlLink       = { fg = e.link, underline = true },
        -- htmlH1         = { fg = m.cyan, bold = true },
        -- htmlH2         = { fg = m.red, bold = true },
        -- htmlH3         = { fg = m.green, bold = true },
    }

    -- apply the user set styles for these groups
    apply_user_styles(syntax_hls.Comment, styles.comments)
    apply_user_styles(syntax_hls.Conditional, styles.keywords)
    apply_user_styles(syntax_hls.Function, styles.functions)
    apply_user_styles(syntax_hls.Identifier, styles.variables)
    apply_user_styles(syntax_hls.Keyword, styles.keywords)
    apply_user_styles(syntax_hls.Repeat, styles.keywords)
    apply_user_styles(syntax_hls.String, styles.strings)
    apply_user_styles(syntax_hls.Type, styles.types)

    return syntax_hls
end

---treesitter highlights
M.main_highlights.treesitter = function ()
    local treesitter_hls = {
        TSFuncBuiltin        = { link = "Function" },
        TSKeywordFunction    = { link = "Statement" },
        TSVariable           = { link = "Identifier" },
        TSVariableBuiltin    = { link = "Identifier" },

        TSConstructor        = { link = "TSFunction" },
        TSFuncMacro          = { link = "TSFunction" },
        TSConstMacro         = { link = "TSNumber" },
        -- TSConstMacro         = { fg = m.cyan },
        TSInclude            = { link = "Include" },
        TSKeywordOperator    = { fg = m.purple },
        TSCharacterSpecial   = { fg = e.disabled },
        TSKeywordReturn      = { fg = m.cyan },
        TSAttribute          = { fg = m.yellow },
        TSError              = { fg = l.error },
        TSException          = { fg = m.red },
        -- TSField              = { fg = e.fg }, -- TODO give a new color
        TSLabel              = { fg = m.red },
        TSNamespace          = { fg = m.yellow },
        TSOperator           = { fg = s.operator },
        TSParameter          = { fg = m.paleblue },
        -- TSParameterReference = { fg = m.paleblue },
        TSProperty           = { fg = m.gray },
        -- TSPunctDelimiter     = { fg = m.cyan }, -- TODO change color
        -- TSPunctBracket       = { fg = m.cyan },
        -- TSPunctSpecial       = { fg = m.cyan }, -- TODO update color
        TSStringRegex        = { fg = m.yellow },
        TSStringEscape       = { fg = e.fg_alt },
        -- TSSymbol             = { fg = m.yellow },
        TSStrong             = { fg = m.paleblue, bold = true },
        TSTag                = { fg = m.red },
        TSTagDelimiter       = { fg = m.cyan },
        TSTagAttribute       = { fg = m.gray },
        TSText               = { fg = e.fg },
        TSTextReference      = { fg = m.yellow },
        TSEmphasis           = { fg = m.paleblue },
        TSUnderline          = { fg = e.fg, underline = true },
        TSDebug              = { fg = m.red },
        -- TSStrike          = { fg = e.fg,, strikethrough = true},
        TSURI                = { fg = e.link },
        TSMath               = { fg = m.blue },
        TSDanger             = { fg = l.error },
        --TSNone             = { },
    }

    -- apply the user set styles for these groups
    -- apply_user_styles(treesitter_hls.TSComment, styles.comments)
    -- apply_user_styles(treesitter_hls.TSConditional, styles.keywords)
    -- apply_user_styles(treesitter_hls.TSFunction, styles.functions)
    -- apply_user_styles(treesitter_hls.TSFuncBuiltin, styles.functions)
    -- apply_user_styles(treesitter_hls.TSRepeat, styles.keywords)
    -- apply_user_styles(treesitter_hls.TSString, styles.strings)
    -- apply_user_styles(treesitter_hls.TSVariable, styles.variables)
    -- apply_user_styles(treesitter_hls.TSType, styles.types)

    return treesitter_hls
end

---parts of the editor that get loaded right away
M.main_highlights.editor = function ()
    local editor_hls = {
        Normal           = { fg = e.fg, bg = e.bg },
        NormalFloat      = { fg = e.fg, bg = b.floating_windows },
        NormalContrast   = { fg = e.fg, bg = e.bg_alt }, -- a help group for contrast fileypes
        ColorColumn      = { fg = m.none, bg = e.active },
        Conceal          = { fg = e.disabled },
        Cursor           = { fg = e.bg_alt, bg = e.cursor },
        CursorIM         = { link = "Cursor" }, -- like Cursor, but used when in IME mode
        ErrorMsg         = { fg = l.error },
        Folded           = { fg = e.disabled, italic = true },
        FoldColumn       = { fg = m.blue },
        LineNr           = { fg = e.line_numbers },
        CursorLineNr     = { fg = e.accent },
        DiffAdd          = { fg = g.added, reverse = true },
        DiffChange       = { fg = g.modified },
        DiffDelete       = { fg = g.removed, reverse = true },
        DiffText         = { fg = g.modified, reverse = true },
        ModeMsg          = { fg = e.accent }, -- 'showmode' message (e.g., "-- INSERT -- ")
        NonText          = { fg = e.disabled },
        SignColumn       = { fg = e.fg },
        SpecialKey       = { fg = m.purple },
        StatusLine       = { fg = e.fg, bg = e.active },
        StatusLineNC     = { fg = e.disabled, bg = e.bg },
        StatusLineTerm   = { fg = e.fg, bg = e.active },
        StatusLineTermNC = { fg = e.disabled, bg = e.bg },
        TabLineFill      = { fg = e.fg },
        TablineSel       = { fg = e.bg, bg = e.accent },
        Tabline          = { fg = e.fg },
        Title            = { fg = e.title, bold = true },
        WarningMsg       = { fg = m.yellow },
        Whitespace       = { fg = e.disabled },
        CursorLine       = { fg = m.none, bg = b.cursor_line },
        CursorColumn     = { link = "CursorLine" },
        Todo             = { fg = m.yellow, bold = true },
        Ignore           = { fg = e.disabled },
        Underlined       = { fg = e.links, underline = true },
        Error            = { fg = l.error, bold = true },
    }

    return editor_hls
end

---parts of the editor that get loaded asynchronously
M.async_highlights.editor = function ()
    local editor_hls = {
        NormalNC         = { bg = b.non_current_windows },
        FloatBorder      = { fg = e.border, bg = b.floating_windows },
        SpellBad         = { fg = m.red, italic = true, undercurl = true },
        SpellCap         = { fg = m.blue, italic = true, undercurl = true },
        SpellLocal       = { fg = m.cyan, italic = true, undercurl = true },
        SpellRare        = { fg = m.purple, italic = true, undercurl = true },
        Warnings         = { fg = m.yellow },
        healthError      = { fg = l.error },
        healthSuccess    = { fg = m.yellow },
        healthWarning    = { fg = m.yellow },
        Visual           = { fg = m.none, bg = e.selection },
        VisualNOS        = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
        Directory        = { fg = m.blue },
        MatchParen       = { fg = m.yellow, bold = true },
        PmenuSel         = { fg = e.contrast, bg = e.accent }, -- Popup menu: selected item.
        IncSearch        = { fg = e.title, bg = e.selection, underline = true },
        Question         = { fg = m.yellow }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine     = { fg = e.highlight, bg = e.title, reverse = true },
        Search           = { fg = e.title, bg = e.selection, bold = true },
        MoreMsg          = { fg = e.accent },
        Pmenu            = { fg = e.fg, bg = e.border }, -- popup menu
        PmenuSbar        = { bg = e.active },
        PmenuThumb       = { fg = e.fg },
        WildMenu         = { fg = m.orange, bold = true }, -- current match in 'wildmenu' completion
        VertSplit        = { fg = e.vsplit },
        WinSeparator     = { fg = e.vsplit },
        -- ToolbarLine   = { fg = e.fg, bg = e.bg_alt },
        -- ToolbarButton = { fg = e.fg, bold = true },
        -- NormalMode       = { fg = e.disabled }, -- Normal mode message in the cmdline
        -- InsertMode       = { link = "NormalMode" },
        -- ReplacelMode     = { link = "NormalMode" },
        -- VisualMode       = { link = "NormalMode" },
        -- CommandMode      = { link = "NormalMode" },
    }

    if settings.disable.eob_lines then
        editor_hls.EndOfBuffer = { fg = e.bg }
    else
        editor_hls.EndOfBuffer = { fg = e.disabled }
    end

    return editor_hls
end

-- these should be loaded right away because
-- some plugins like lualine.nvim inherit the colors
M.main_highlights.load_lsp = function ()
    local lsp_hls = {
        DiagnosticError        = { fg = l.error },
        DiagnosticWarn         = { fg = l.warning },
        DiagnosticInformation  = { fg = l.info },
        DiagnosticHint         = { fg = l.hint },
    }

    return lsp_hls
end

M.async_highlights.load_lsp = function ()
    local lsp_hls = {
        -- Nvim 0.6. and up
        DiagnosticVirtualTextError = { link = "DiagnosticError" },
        DiagnosticFloatingError    = { link = "DiagnosticError" },
        DiagnosticSignError        = { link = "DiagnosticError" },
        DiagnosticUnderlineError   = { undercurl = true, sp = l.error },
        DiagnosticVirtualTextWarn  = { link = "DiagnosticWarn" },
        DiagnosticFloatingWarn     = { link = "DiagnosticWarn" },
        DiagnosticSignWarn         = { link = "DiagnosticWarn" },
        DiagnosticUnderlineWarn    = { undercurl = true, sp = l.warning },
        DiagnosticVirtualTextInfo  = { link = "DiagnosticInfo" },
        DiagnosticFloatingInfo     = { link = "DiagnosticInfo" },
        DiagnosticSignInfo         = { link = "DiagnosticInfo" },
        DiagnosticUnderlineInfo    = { undercurl = true, sp = l.info },
        DiagnosticVirtualTextHint  = { link = "DiagnosticHint" },
        DiagnosticFloatingHint     = { link = "DiagnosticHint" },
        DiagnosticSignHint         = { link = "DiagnosticHint" },
        DiagnosticUnderlineHint    = { undercurl = true, sp = l.hint },
        LspReferenceText           = { bg = e.selection }, -- used for highlighting "text" references
        LspReferenceRead           = { link = "LspReferenceText" }, -- used for highlighting "read" references
        LspReferenceWrite          = { link = "LspReferenceText" }, -- used for highlighting "write" references
    }

    return lsp_hls
end

---plugins that get loaded right away
M.main_highlights.plugins = function ()
    local plugin_hls = {
        -- gitsigns.nvim
        GitSignsAdd      = { fg = g.added },
        GitSignsChange   = { fg = g.modified },
        GitSignsDelete   = { fg = g.removed },
        GitSignsAddNr    = { fg = g.added },
        GitSignsAddLn    = { fg = g.added },
        GitSignsChangeNr = { fg = g.modified, bg =e.bg_num },
        GitSignsChangeLn = { fg = g.modified },
        GitSignsDeleteNr = { fg = g.removed, bg =e.bg_num },
        GitSignsDeleteLn = { fg = g.removed },

        -- dashboard.nvim
        DashboardShortCut = { fg = m.red },
        DashboardHeader   = { fg = e.comments },
        DashboardCenter   = { fg = e.accent },
        DashboardFooter   = { fg = m.yellow, italic = true },

        -- indent-blankline.nvim
        IndentBlanklineChar        = { fg = e.border },
        IndentBlanklineContextChar = { fg = e.disabled },
    }

    return plugin_hls
end

---plugins that get loaded asynchronously
M.async_highlights.plugins = function ()
    local plugin_hls = {

        -- trouble.nvim
        TroubleText            = { fg = e.fg_alt, bg = b.sidebars },
        TroubleCount           = { fg = m.purple, bg = b.sidebars },
        TroubleNormal          = { fg = e.fg, bg = b.sidebars },
        TroubleSignError       = { fg = l.error, bg = b.sidebars },
        TroubleSignWarning     = { fg = m.yellow, bg = b.sidebars },
        TroubleSignInformation = { fg = m.paleblue, bg = b.sidebars },
        TroubleSignHint        = { fg = m.purple, bg = b.sidebars },
        TroubleFoldIcon        = { fg = e.accent, bg = b.sidebars },
        TroubleIndent          = { fg = e.border, bg = b.sidebars },
        TroubleLocation        = { fg = e.disabled, bg = b.sidebars },

        -- nvim-cmp
        CmpItemAbbrMatch      = { fg = m.paleblue, bold = true },
        CmpItemKindText       = { fg = s.comments },
        CmpItemKindMethod     = { fg = s.fn },
        CmpItemKindFunction   = { fg = s.fn },
        CmpItemKindContructor = { fg = s.fn },
        CmpItemKindField      = { fg = m.cyan },
        CmpItemKindVariable   = { fg = m.paleblue },
        CmpItemKindConstant   = { fg = m.yellow },
        CmpItemKindClass      = { fg = s.type },
        CmpItemKindInterface  = { fg = s.type },
        CmpItemKindModule     = { fg = m.orange },
        CmpItemKindProperty   = { fg = s.text },
        CmpItemKindKeyword    = { fg = s.keyword },
        CmpItemKindFile       = { fg = e.title },
        CmpItemKindFolder     = { fg = e.title },
        CmpItemKindSnippet    = { fg = m.green },
        CmpItemEnum           = { fg = s.type }, -- TODO
        CmpItemEnumMember     = { fg = m.cyan }, -- TODO
        CmpItemOperator       = { fg = s.operator }, -- TODO
        CmpItemReference      = { fg = e.fg_alt }, -- TODO

        -- neogit
        NeogitBranch               = { fg = m.paleblue },
        NeogitRemote               = { fg = m.purple },
        NeogitHunkHeader           = { fg = e.fg, bg = e.highlight },
        NeogitHunkHeaderHighlight  = { fg = m.blue, bg = e.contrast },
        NeogitDiffContextHighlight = { fg = e.fg_alt, bg = e.contrast },
        NeogitDiffDeleteHighlight  = { fg = m.red },
        NeogitDiffAddHighlight     = { fg = m.yellow },

        -- telescope.nvim
        TelescopeNormal         = { fg = e.fg, bg = b.floating_windows },
        TelescopePromptBorder   = { fg = e.border, bg = b.floating_windows },
        TelescopeResultsBorder  = { link = "TelescopePromptBorder" },
        TelescopePreviewBorder  = { link = "TelescopePromptBorder" },
        TelescopeSelectionCaret = { fg = m.green, bg = e.selection },
        TelescopeSelection      = { fg = m.green, bg = e.selection },
        TelescopeMultiSelection = { fg = m.yellow },
        TelescopeMatching       = { bold = true },

        -- nvim-tree
        NvimTreeNormal           = { fg = e.fg, bg = b.sidebars },
        NvimTreeNormalNC         = { link = "NvimTreeNormal" },
        NvimTreeRootFolder       = { fg = e.accent, bg = b.sidebars },
        NvimTreeFolderName       = { fg = m.blue, bold = true },
        NvimTreeFolderIcon       = { link = "NvimTreeFolderName" },
        NvimTreeEmptyFolderName  = { fg = m.gray },
        NvimTreeOpenedFolderName = { fg = m.yellow, bold = true },
        NvimTreeIndentMarker     = { fg = e.disabled },
        NvimTreeGitDirty         = { fg = m.blue },
        NvimTreeGitNew           = { fg = m.yellow },
        NvimTreeGitStaged        = { fg = e.fg },
        NvimTreeGitDeleted       = { fg = m.red },
        NvimTreeOpenedFile       = { link = "NvimTreeGitNew" },
        NvimTreeImageFile        = { fg = m.yellow },
        NvimTreeMarkdownFile     = { fg = m.pink },
        NvimTreeExecFile         = { link = "NvimTreeGitNew" },
        NvimTreeSpecialFile      = { fg = m.purple },

        -- which-key.nvim
        WhichKey          = { fg = e.accent, bold = true },
        WhichKeyGroup     = { fg = m.gray },
        WhichKeyDesc      = { fg = e.fg, italic = true },
        WhichKeySeparator = { fg = m.red },
        WhichKeyFloat     = { bg = b.floating_windows },

        -- nvim-dap
        DapBreakpoint = { fg = m.red },
        DapStopped    = { fg = m.yellow },

        -- nvim-dap-ui
        DapUIFloatBorder = { fg = e.border, bg = e.bg },
        DapUIDecoration  = { fg = m.blue },
        -- DapUIVariable    = { fg = e.fg },

        -- hop.nvim
        HopNextKey   = { fg = e.accent, bold = true },
        HopNextKey1  = { fg = m.purple, bold = true },
        HopNextKey2  = { fg = m.blue },
        HopUnmatched = { fg = e.comments },

        -- nvim sneak
        Sneak      = { fg = e.bg, bg = e.accent },
        SneakScope = { bg = e.selection },

        -- vim illuminate
        illuminatedWord    = { bg = colors.highight, italic = true },
        illuminatedCurWord = { bg = colors.highight, underline = true },

        -- lspsaga.nvim
        -- LspFloatWinNormal             = { fg = e.fg, bg = b.floating_windows },
        -- LspFloatWinBorder             = { link = "FloatBorder" },
        -- LspSagaDiagnosticBorder       = { link = "FloatBorder" },
        -- LspSagaDiagnosticHeader       = { fg = m.blue },
        -- LspSagaDiagnosticTruncateLine = { link = "FloatBorder" },
        -- LspLinesDiagBorder            = { link = "FloatBorder" },
        -- ProviderTruncateLine          = { link = "FloatBorder" },
        -- LspSagaShTruncateLine         = { link = "FloatBorder" },
        -- LspSagaDocTruncateLine        = { link = "FloatBorder" },
        -- LineDiagTruncateLine          = { link = "FloatBorder" },
        -- LspSagaBorderTitle            = { fg = m.blue },
        -- LspSagaHoverBorder            = { link = "FloatBorder" },
        -- LspSagaRenameBorder           = { link = "FloatBorder" },
        -- LspSagaRenamePromptPrefix     = { fg = m.yellow },
        -- LspSagaDefPreviewBorder       = { link = "FloatBorder" },
        -- LspSagaCodeActionTitle        = { fg = m.paleblue },
        -- LspSagaCodeActionContent      = { fg = m.purple },
        -- LspSagaCodeActionBorder       = { link = "FloatBorder" },
        -- LspSagaCodeActionTruncateLine = { link = "FloatBorder" },
        -- LspSagaSignatureHelpBorder    = { link = "FloatBorder" },
        -- LspSagaFinderSelection        = { link = "LspSagaRenamePromptPrefix" },
        -- LspSagaLspFinderBorder        = { link = "FloatBorder" },
        -- LspSagaAutoPreview            = { link = "LspFloatWinBorder" },
        -- ReferencesCount               = { link = "LspSagaCodeActionContent" },
        -- DefinitionCount               = { link = "LspSagaCodeActionContent" },
        -- DefinitionPreviewTitle        = { link = "LspSagaRenamePromptPrefix" },
        -- DefinitionIcon                = { fg = m.blue },
        -- ReferencesIcon                = { link = "DefinitionIcon" },
        -- TargetWord                    = { fg = m.cyan }


        -- nvim navic
        -- NavicIconsFile          = { fg = e.title, bg = e.selection },
        -- NavicIconsModule        = { link = "NavicIconsFile" },
        -- NavicIconsNamespace     = { fg = m.yellow, bg = e.selection },
        -- NavicIconsPackage       = { link = "NavicIconsFile" },
        -- NavicIconsClass         = { link = "NavicIconsModule" },
        -- NavicIconsMethod        = { fg = m.blue, bg = e.selection },
        -- NavicIconsProperty      = { fg = m.purple, bg = e.selection },
        -- NavicIconsField         = { fg = m.cyan, bg = e.selection },
        -- NavicIconsConstructor   = { link = "NavicIconsProperty"},
        -- NavicIconsEnum          = { link = "NavicIconsNamespace" },
        -- NavicIconsInterface     = { link = "NavicIconsModule" },
        -- NavicIconsFunction      = { link = "NavicIconsMethod" },
        -- NavicIconsVariable      = { fg = m.paleblue, bg = e.selection },
        -- NavicIconsConstant      = { link = "NavicIconsVariable" },
        -- NavicIconsString        = { fg = m.orange, bg = e.selection },
        -- NavicIconsNumber        = { link = "NavicIconsString" },
        -- NavicIconsBoolean       = { fg = m.yellow, bg = e.selection },
        -- NavicIconsArray         = { link = "NavicIconsString" },
        -- NavicIconsObject        = { link = "NavicIconsString" },
        -- NavicIconsKey           = { link = "NavicIconsField" },
        -- NavicIconsNull          = { fg = m.red, bg = e.selection },
        -- NavicIconsEnumMember    = { link = "NavicIconsNamespace" },
        -- NavicIconsStruct        = { link = "NavicIconsModule" },
        -- NavicIconsEvent         = { link = "NavicIconsNull" },
        -- NavicIconsOperator      = { link = "NavicIconsNull" },
        -- NavicIconsTypeParameter = { link = "NavicIconsBoolean" },
        -- NavicText               = { fg = e.fg, bg = e.selection },
        -- NavicSeparator          = { link = "NavicText" },

        -- mini.nvim
        -- MiniCompletionActiveParameter = { underline = true },
        -- MiniCursorword                = { underline = true },
        -- MiniCursorwordCurrent         = { underline = true },
        -- MiniIndentscopeSymbol         = { fg = m.cyan },
        -- MiniIndentscopePrefix         = { nocombine = true },
        -- MiniJump                      = { fg = e.bg, bg = e.accent },
        -- MiniJump2dSpot                = { fg = e.accent, bold = true, nocombine = true },
        -- MiniStarterCurrent            = { nocombine = true },
        -- MiniStarterFooter             = { fg = m.yellow, italic = true },
        -- MiniStarterHeader             = { fg = e.comments },
        -- MiniStarterInactive           = { link = "Comment" },
        -- MiniStarterItem               = { link = "Normal" },
        -- MiniStarterItemBullet         = { fg = e.border },
        -- MiniStarterItemPrefix         = { fg = m.yellow },
        -- MiniStarterSection            = {  fg = m.cyan },
        -- MiniStarterQuery              = { fg = m.paleblue },
        -- MiniStatuslineDevinfo         = { fg = e.fg, bg = e.active },
        -- MiniStatuslineFileinfo        = { link = "MiniStatuslineDevinfo" },
        -- MiniStatuslineFilename        = { fg = e.disabled, bg = e.bg },
        -- MiniStatuslineInactive        = { link = "MiniStatuslineFilename" },
        -- MiniStatuslineModeCommand     = { fg = e.bg, bg = m.yellow, bold = true },
        -- MiniStatuslineModeInsert      = { fg = e.bg, bg = m.yellow, bold = true },
        -- MiniStatuslineModeNormal      = { fg = e.bg, bg = e.accent, bold = true },
        -- MiniStatuslineModeOther       = { fg = e.bg, bg = m.cyan, bold = true },
        -- MiniStatuslineModeReplace     = { fg = e.bg, bg = m.red, bold = true },
        -- MiniStatuslineModeVisual      = { fg = e.bg, bg = m.purple, bold = true },
        -- MiniSurround                  = { link = "IncSearch" },
        -- MiniTablineCurrent            = { fg = e.bg, bg = e.accent, bold = true },
        -- MiniTablineFill               = { link = "TabLineFill" },
        -- MiniTablineHidden             = { fg = e.fg, bg = e.bg },
        -- MiniTablineModifiedCurrent    = { fg = e.accent, bg = e.bg, bold = true },
        -- MiniTablineModifiedHidden     = { fg = e.bg, bg = e.fg },
        -- MiniTablineModifiedVisible    = { fg = e.accent, bg = e.bg },
        -- MiniTablineTabpagesection     = { fg = e.title, bg = e.selection, bold = true },
        -- MiniTablineVisible            = { fg = e.bg, bg = e.accent },
        -- MiniTestEmphasis              = { bold = true },
        -- MiniTestFail                  = { fg = m.red, bold = true },
        -- MiniTestPass                  = { fg = m.yellow, bold = true },
        -- MiniTrailspace                = { bg = m.red },
    }

    return plugin_hls
end

---function for setting the terminal colors
M.load_terminal = function ()
    vim.g.terminal_color_0 = m.black
    vim.g.terminal_color_1 = m.darkgreen
    vim.g.terminal_color_2 = m.darkgreen
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

return M
