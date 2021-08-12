# 🌊 material.nvim
![logo](https://user-images.githubusercontent.com/76592799/129165712-7ca1a27a-b507-4bd3-8c7a-da718d7dcec9.jpg)

## 🔱 Info
A port of [Material](https://material-theme.site) colorscheme for NeoVim written in Lua

Material.nvim is meant to be a fast and modern colorscheme written in Lua that supports a lot of the new features
added to NeoVim like built-in LSP and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

If you want the old version that uses colorbuddy.nvim, you can find it [here](https://github.com/marko-cerovac/material.nvim/tree/colorbuddy)

## ✨ Features

+ 5 styles to choose from
    + Deep ocean ![deep-ocean](https://user-images.githubusercontent.com/76592799/129165476-6ec7c2bf-c81b-405e-83a2-f75674cf7a7f.png)

    + Oceanic ![oceanic](https://user-images.githubusercontent.com/76592799/129165517-6048f242-b9d1-4d0c-912c-c53b76442e47.png)

    + Palenight ![palenight](https://user-images.githubusercontent.com/76592799/129165551-b4ee76f1-6d95-4275-831f-6419a1f805eb.png)

    + Lighter ![lighter](https://user-images.githubusercontent.com/76592799/129165583-9afa3f0a-97f0-4b01-ab96-31b8381baa84.png)

    + Darker ![darker](https://user-images.githubusercontent.com/76592799/129165627-d43e4651-9206-427e-a31b-0962593ab550.png)


+ Supported plugins:
    + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
    + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
    + [Lsp Saga](https://github.com/glepnir/lspsaga.nvim)
    + [Nvim-Compe](https://github.com/hrsh7th/nvim-compe)
    + [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
    + [Git Gutter](https://github.com/airblade/vim-gitgutter)
    + [git-messenger](https://github.com/rhysd/git-messenger.vim)
    + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
    + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    + [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
    + [NERDTree](https://github.com/preservim/nerdtree)
    + [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
    + [WhichKey.nvim](https://github.com/folke/which-key.nvim)
    + [Dashboard](https://github.com/glepnir/dashboard-nvim)
    + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
    + [Lualine](https://github.com/hoob3rt/lualine.nvim)
    + [Neogit](https://github.com/TimUntersberger/neogit)
    + [vim-sneak](https://github.com/justinmk/vim-sneak)
    + [nvim-dap](https://github.com/mfussenegger/nvim-dap)
    + [vim-illuminate](https://github.com/RRethy/vim-illuminate)

+ Ability to change background on sidebar-like windows like Nvim-Tree, Packer, terminal etc.

+ Asynchronous highlight loading which makes the theme extremely fast

+ Added functions for live theme switching without the need to restart NeoVim

## ⚡️ Requirements

+ Neovim >= 0.5.0

## ⚓ Installation

Install via your favourite package manager:
```vim
" If you are using Vim-Plug
Plug 'marko-cerovac/material.nvim'
```

```lua
-- If you are using Packer
use 'marko-cerovac/material.nvim'
```

## 🐬 Usage

Enable the colorscheme:
```vim
"Vim-Script:
colorscheme material
```

```lua
--Lua:
require('material').set()
```

To enable the `material-nvim` theme for `Lualine`, simply specify it in your lualine settings:
( make sure to set the theme to 'material-nvim', as 'material' already exists built in to lualine)

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'material-nvim'
    -- ... your lualine config
  }
}
```

For a comlete guide on usage and Configuration of the theme, see ```:help material.nvim```.

## ⚙️ Configuration

+ There are 5 different styles available:
    + darker
    + lighter
    + oceanic
    + palenight
    + deep ocean

Set the desired style using:
```vim
"Vim-Script:
let g:material_style = 'darker'
```

```lua
--Lua:
vim.g.material_style = "deep ocean"
```

Available options:

| Option                              | Default     | Description                                                                                      |
| ----------------------------------- | ----------- | ------------------------------------------------------------------------------------------------ |
| material_style                      | `"oceanic"` | The theme comes in five styles, 'darker', 'lighter', 'palenight', 'oceanic' and 'deep ocean'     |
| material_contrast                   | `true`      | Make sidebars and popup menus like nvim-tree and telescope have a different background           |
| material_lighter_contrast           | `false`     | Increase the contrast for the 'lighter' variant of the theme                                     |
| material_italic_strings             | `false`     | Make strings italic                                                                              |
| material_italic_comments            | `false`     | Make comments italic                                                                             |
| material_italic_keywords            | `false`     | Make keywords like if, for, while etc. italic                                                    |
| material_italic_functions           | `false`     | Make function calls and names italic                                                             |
| material_italic_variables           | `false`     | Make variable names and identifiers italic                                                       |
| material_borders                    | `false`     | Enable the border between verticaly split windows visable                                        |
| material_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background          |
| material_disable_terminal           | `false`     | Disable the setting of terminal colors                                                           |
| material_hide_eob                   | `false`     | Hide the end of buffer lines ( ~ )                                                               |
| material_variable_color             | `#717CB4`   | Set a custom color for variables and fields                                                      |
| material_custom_colors              |    {}       | Override the default colors and use your own                                                     |

```lua
-- Example config in lua
vim.g.material_style = 'deep ocean'
vim.g.material_italic_comments = true
vim.g.material_italic_keywords = true
vim.g.material_italic_functions = true
vim.g.material_italic_variables = false
vim.g.material_contrast = true
vim.g.material_borders = false
vim.g.material_disable_background = false
--vim.g.material_custom_colors = { black = "#000000", bg = "#0F111A" }

-- Load the colorscheme
require('material').set()
```

```vim
" Example config in Vim-Script
let g:material_style = 'deep ocean'
let g:material_italic_comments = v:true
let g:material_italic_keywords = v:true
let g:material_italic_functions = v:true
let g:material_contrast = v:true

" Load the colorsheme
colorscheme material
```

## ⛵ Functions

+ Toggle the style live without the need to exit NeoVim

![toggle_style](https://user-images.githubusercontent.com/76592799/129165775-6a5a0114-5c1f-4e45-aae3-7cd612aa2c04.gif)

Just call the function for style switching
```vim
"Vim-Script
:lua require('material.functions').toggle_style()
"This command toggles the style
```

The command can also be mapped to a key for fast style switching
```vim
"Vim-Script:
nnoremap <leader>mm :lua require('material.functions').toggle_style()<CR>
```

```lua
--Lua:
vim.api.nvim_set_keymap('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })
```

+ Toggle the end of buffer lines ( ~ )

Call the built in function for toggling buffer lines

```vim
"Vim-Script
:lua require('material.functions').toggle_eob()
"This command toggles the end of buffer lines
```


The command can also be mapped to a key to toggle the lines live
```vim
"Vim-Script:
nnoremap <leader>me :lua require('material.functions').toggle_eob()<CR>
```

```lua
--Lua:
vim.api.nvim_set_keymap('n', '<leader>me', [[<Cmd>lua require('material.functions').toggle_eob()<CR>]], { noremap = true, silent = true })
```

+ Change the style to a desired one using the function change_style("desired style")
```vim
"Vim-Script:
:lua require('material.functions').change_style("palenight")
"This command changes the style to palenight
```

The command can also be mapped to a key for fast style switching
```vim
"Vim-Script:
nnoremap <leader>ml :lua require('material.functions').change_style('lighter')<CR>
nnoremap <leader>md :lua require('material.functions').change_style('darker')<CR>
```

```lua
--Lua:
vim.api.nvim_set_keymap('n', '<leader>ml', [[<Cmd>lua require('material.functions').change_style('lighter')<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>md', [[<Cmd>lua require('material.functions').change_style('darker')<CR>]], { noremap = true, silent = true })
```
