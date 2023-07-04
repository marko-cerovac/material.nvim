local highlights = require "material.highlights"
local settings   = require "material.util.config".settings

local M = {}

---apply highlights for a given table
---@param highlights table highlight group names and their values
local apply_highlights = function(highlights)
    for name, values in pairs(highlights) do
        vim.api.nvim_set_hl(0, name, values)
    end
end

---prepare environment
local prepare_environment = function()
    if vim.g.colors_name then
        vim.cmd "hi clear"
    end

    vim.g.colors_name     = "material"
    vim.opt.termguicolors = true

    if vim.fn.exists "syntax_on" then
        vim.cmd "syntax reset"
    end

    if vim.g.material_style == "lighter" then
        vim.opt.background = "light"
    else
        vim.opt.background = "dark"
    end

    if not settings.disable.colored_cursor then
        vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:Cursor/Cursor"
        local exit_group  = vim.api.nvim_create_augroup("MaterialExit", { clear = true })
        vim.api.nvim_create_autocmd("ExitPre", {
            command = "autocmd ExitPre * set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20",
            group   = exit_group
        })
    end
end

---give darker background to given filetypes or buftypes
---@param contrast_settings table names of filetypes to apply contrast to
local apply_contrast = function(contrast_settings)
    local group = vim.api.nvim_create_augroup("Material", { clear = true })

    -- clean up autogroups if the theme is not material
    vim.api.nvim_create_autocmd("ColorScheme", { callback = function()
        if vim.g.colors_name ~= "material" then
            vim.api.nvim_del_augroup_by_name("Material")
        end
    end, group = group })

    -- apply contrast to the built-in terminal
    if contrast_settings.terminal then
        vim.api.nvim_create_autocmd("TermOpen", {
            command = "setlocal winhighlight=Normal:NormalContrast,SignColumn:NormalContrast",
            group   = group,
        })
    end

    -- apply contrast to filetypes
    for _, sidebar in ipairs(contrast_settings.filetypes) do
        vim.api.nvim_create_autocmd("FileType", {
            pattern = sidebar,
            command = "setlocal winhighlight=Normal:NormalContrast,SignColumn:SignColumnFloat",
            group   = group,
        })
    end
end

---async clojure
local async

---loads highlights asynchronously
local load_async = function()
    for _, fn in pairs(highlights.async_highlights) do
        -- fn() returns a table of highlights to be applied
        apply_highlights(fn())
    end

    -- load terminal colors
    if not settings.disable.term_colors then
        highlights.load_terminal();
    end

    -- apply contrast to the terminal and user defined filetypes
    apply_contrast(settings.contrast)

    -- load user defined higlights
    if type(settings.custom_highlights) == "table" then
        apply_highlights(settings.custom_highlights)
    end

    -- if this function gets called asyncronously, this closure is needed
    if (async) then
        async:close()
    end
end

---loads the theme and applies the highlights
M.load = function()
    prepare_environment()

    -- schedule the async function if async is enabled
    if settings.async_loading then
        async = vim.loop.new_async(vim.schedule_wrap(load_async))
    end

    -- apply highlights one by one
    for _, fn in pairs(highlights.main_highlights) do
        -- fn() returns a table of highlights to be applied
        apply_highlights(fn())
    end

	-- if async is enabled, send the function
    if settings.async_loading then
        async:send()
    else
        load_async()
    end
end

return M
