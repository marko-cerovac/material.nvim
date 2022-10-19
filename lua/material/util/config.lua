local M = {}

---theme settings
local defaults = {
    contrast = {
        terminal = false,
        sidebars = false,
        cursor_line = false,
        floating_windows = false,
        non_current_windows = false,
        filetypes = {}
    },
    styles = {
        comments = {},
        strings = {},
        keywords = {},
        functions = {},
        variables = {},
        operators = {},
        types = {},
    },
    disable = {
        colored_cursor = false,
        borders = false,
        background = false,
        term_colors = false,
        eob_lines = false
    },
    high_visibility = {
        lighter = false,
        darker = false,
    },
    -- smart_syntax = true,
    lualine_style = "default",
    custom_colors = nil,
    custom_highlights = {},
    plugins = {},
    async_loading = true,
}

M.settings = defaults

---setup function
---@param user_settings table user defined settings for the theme
M.setup = function(user_settings)
    M.settings = vim.tbl_deep_extend("force", {}, defaults, user_settings or {})
end

return M
