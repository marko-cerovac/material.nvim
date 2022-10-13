local enabled_plugins = require "material.util.config".settings.plugins

local M = {}

---main highlight functions
M.main_highlights = {}

---async highlight functions
M.async_highlights = {}

for plugin, is_enabled in pairs(enabled_plugins) do
    if is_enabled then
        local plugin_table = require("material.highlights.plugins." .. plugin)

        if plugin_table.async then
            M.async_highlights[plugin] = plugin_table.load
        else
            M.main_highlights[plugin] = plugin_table.load
        end
    end
end

return M
