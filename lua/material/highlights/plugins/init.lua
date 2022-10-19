local enabled_plugins = require "material.util.config".settings.plugins

local M = {}

---main highlight functions
M.main_highlights = {}

---async highlight functions
M.async_highlights = {}

for _, plugin in ipairs(enabled_plugins) do
    local module = "material.highlights.plugins." .. plugin
    -- if the module is already loaded, reload it
    package.loaded[module] = nil
    local ok, table = pcall(require, module)

    if not ok then
        vim.notify("material.nvim: plugin " .. plugin .. " doesn't exist", vim.log.levels.WARN)
        vim.notify("material.nvim: please check your config for spelling errors", vim.log.levels.WARN)
    else
        if table.async then
            M.async_highlights[plugin] = table.load
        else
            M.main_highlights[plugin] = table.load
        end
    end
end

return M
