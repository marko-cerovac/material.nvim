local M = {}

M.load = function()
    local plugin_hls = {
        CocHighlightText  = { link = "LspReferenceText" },
        CocHighlightRead  = { link = "LspReferenceRead" },
        CocHighlightWrite = { link = "LspReferenceWrite" },
    }

    return plugin_hls
end

M.async = true

return M
