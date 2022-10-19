local colors = require "material.colors"

local m = colors.main
local e = colors.editor
local b = colors.backgrounds

local M = {}

M.load = function()
    local plugin_hls = {
        LspFloatWinNormal             = { fg = e.fg, bg = b.floating_windows },
        LspFloatWinBorder             = { link = "FloatBorder" },
        LspSagaDiagnosticBorder       = { link = "FloatBorder" },
        LspSagaDiagnosticHeader       = { fg = m.blue },
        LspSagaDiagnosticTruncateLine = { link = "FloatBorder" },
        LspLinesDiagBorder            = { link = "FloatBorder" },
        ProviderTruncateLine          = { link = "FloatBorder" },
        LspSagaShTruncateLine         = { link = "FloatBorder" },
        LspSagaDocTruncateLine        = { link = "FloatBorder" },
        LineDiagTruncateLine          = { link = "FloatBorder" },
        LspSagaBorderTitle            = { fg = m.blue },
        LspSagaHoverBorder            = { link = "FloatBorder" },
        LspSagaRenameBorder           = { link = "FloatBorder" },
        LspSagaRenamePromptPrefix     = { fg = m.yellow },
        LspSagaDefPreviewBorder       = { link = "FloatBorder" },
        LspSagaCodeActionTitle        = { fg = m.paleblue },
        LspSagaCodeActionContent      = { fg = m.purple },
        LspSagaCodeActionBorder       = { link = "FloatBorder" },
        LspSagaCodeActionTruncateLine = { link = "FloatBorder" },
        LspSagaSignatureHelpBorder    = { link = "FloatBorder" },
        LspSagaFinderSelection        = { link = "LspSagaRenamePromptPrefix" },
        LspSagaLspFinderBorder        = { link = "FloatBorder" },
        LspSagaAutoPreview            = { link = "LspFloatWinBorder" },
        ReferencesCount               = { link = "LspSagaCodeActionContent" },
        DefinitionCount               = { link = "LspSagaCodeActionContent" },
        DefinitionPreviewTitle        = { link = "LspSagaRenamePromptPrefix" },
        DefinitionIcon                = { fg = m.blue },
        ReferencesIcon                = { link = "DefinitionIcon" },
        TargetWord                    = { fg = m.cyan }
    }

    return plugin_hls
end

M.async = true

return M
