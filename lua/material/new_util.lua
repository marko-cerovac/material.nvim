local settings = require "material.config".settings
local theme = require "material.theme"

local M = {}

---Apply highlights for a given table
---@param highlights table highlight group names and their values
local apply_highlights = function(highlights)
    for group, values in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, values)
    end
end

---Give darker background to given filetypes or buftypes
---@param filetypes table names of filetypes to apply contrast to
local apply_contrast = function(filetypes)
    local group = vim.api.nvim_create_augroup("Material", { clear = true })

    -- clean up autogroups if the theme is not material
    vim.api.nvim_create_autocmd("ColorScheme", { callback = function()
        if vim.g.colors_name ~= "material" then
            vim.api.nvim_del_augroup_by_name("Material")
        end
    end, group = group })

    for _, sidebar in ipairs(filetypes) do
        if sidebar == "terminal" then
            vim.api.nvim_create_autocmd("TermOpen", {
                command = "setlocal winhighlight=Normal:NormalContrast,SignColumn:NormalContrast",
                group = group,
            })
        else
            vim.api.nvim_create_autocmd("FileType", {
                pattern = sidebar,
                command = "setlocal winhighlight=Normal:NormalContrast,SignColumn:SignColumnFloat",
                group = group,
            })
        end
    end
end

---Loads highlights asynchronously
---@param highlight_fns table functions that are going to be loaded async
local load_async = function(highlight_fns)
    for _, fn in pairs(highlight_fns) do
        -- fn() returns a table of highlights to be applied
        M.apply_highlights(fn())
    end

    -- load terminal colors
    if not settings.disable.term_colors then
        theme.loadTerminal();
    end

    -- load user defined higlights
    if type(settings.cusom_highlights) == "table" then
        apply_highlights(settings.cusom_highlights)
    end

    -- apply contrast to user defined filetypes
    apply_contrast(settings.contrast.filetypes)
end

M.load = function ()

end

return M
