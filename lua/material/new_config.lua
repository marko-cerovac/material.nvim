local M = {}

---Theme settings
local defaults = {
    contrast = {
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        line_numbers = false, -- Enable contrast background for line numbers
        sign_column = false, -- Enable contrast background the sign column
        non_current_windows = false, -- Enable darker background for non-current windows
        popup_menu = false, -- Enable lighter background for the popup menu
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
    custom_colors = {}, -- define custom colors
    custom_highlights = {}, -- define custom highlights
    async_loading = true, -- Load parts of the theme asyncronously for faster startup
    plugins = { -- Here, you can disable(set to false) plugins that you don't use
        -- treesitter = true,
        trouble = true,
        nvim_cmp = true,
        neogit = true,
        gitsigns = true,
        git_gutter = true,
        telescope = true,
        nvim_tree = true,
        sidebar_nvim = true,
        lsp_saga = true,
        nvim_dap = true,
        nvim_navic = true,
        which_key = true,
        sneak = true,
        hop = true,
        indent_blankline = true,
        nvim_illuminate = true,
        mini = true,
    }
}

---Prepare environment
---@param settings table settings passed to the setup function
local prepare_environment = function(settings)
    vim.cmd "hi clear"
    vim.opt.termguicolors = true
    if vim.fn.exists "syntax_on" then
        vim.cmd "syntax reset"
    end

    if vim.g.material_style == "lighter" then
        vim.opt.background = "light"
    else
        vim.opt.background = "dark"
    end
    vim.g.colors_name = "material"

    if not settings.disable.colored_cursor then
        vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:Cursor/Cursor"
        local exit_group = vim.api.nvim_create_augroup("MaterialExit", { clear = true })
        vim.api.nvim_create_autocmd("ExitPre", {
            command = "autocmd ExitPre * set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20",
            group = exit_group
        })
    end
end

M.settings = defaults

---Setup function
---@param user_settings table user settings for the theme
M.setup = function(user_settings)
    M.settings = vim.tbl_deep_extend("force", {}, defaults, user_settings or {})

    prepare_environment(M.settings)
end

return M
