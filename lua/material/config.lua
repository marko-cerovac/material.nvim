local M = {}

---theme settings
local defaults = {
    use_treesitter = true, -- Use treesitter for syntax highlighting
    contrast = {
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        line_numbers = false, -- Enable contrast background for line numbers
        sign_column = false, -- Enable contrast background the sign column
        non_current_windows = false, -- Enable darker background for non-current windows
    },
    italics = {
        comments = false, -- Italic comments
        strings = false, -- Italic strings
        keywords = false, -- Italic keywords
        functions = false, -- Italic functions
        variables = false -- Italic variables
    },
    contrast_filetypes = {}, -- Select which windows get the contrast background
    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable window split borders
        background = false, -- Disable setting the background color
        term_colors = false, -- Disable setting the terminal colors
        eob_lines = false -- Make end-of-buffer lines invisible
    },
    high_visibility = {
        lighter = false, -- Higher contrast text for lighter style
        darker = false -- Higher contrast text for darker style
    },
    lualine_style = 'default', -- Lualine style ( can be 'stealth' or 'default' )
    custom_colors = nil, -- define custom colors
    custom_highlights = {}, -- define custom highlights
    async_loading = true, -- Load parts of the theme asyncronously for faster startup
}

M.settings = defaults

---setup function
---@param user_settings table user defined settings for the theme
M.setup = function(user_settings)
    M.settings = vim.tbl_deep_extend("force", {}, defaults, user_settings or {})
end

return M
