local M = {}

---theme settings
local defaults = {
    use_treesitter = true,
    contrast = {
        terminal = false,
        sidebars = false,
        floating_windows = false,
        cursor_line = false,
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
    lualine_style = "default",
    custom_colors = nil,
    custom_highlights = {},
    async_loading = true,
}

M.settings = defaults

---setup function
---@param user_settings table user defined settings for the theme
M.setup = function(user_settings)
    M.settings = vim.tbl_deep_extend("force", {}, defaults, user_settings or {})
end

return M
