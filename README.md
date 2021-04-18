# material.nvim
A port or [Material](https://material-theme.site) colorscheme for NeoVim written in lua using [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim).

Theme is inspired by https://github.com/kaicataldo/material.vim

![screen](/media/Material.png)

## Features

material.nvim is meant to be a modern colorscheme written in lua for NeoVim that supports a lot of the new features
added to NeoVim like built-in lsp and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

+ Supported plugins:
    + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
    + [lspsaga](https://github.com/glepnir/lspsaga.nvim)
    + [gitgutter](https://github.com/airblade/vim-gitgutter)
    + [git-messenger](https://github.com/rhysd/git-messenger.vim)
    + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    + [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
    + [NERDTree](https://github.com/preservim/nerdtree)
    + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
    + [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

+ 6 styles to choose from

+ Added functions for live theme switching without the need to restart NeoVim

## Installation

Install via your favourite package manager:
```vim
" If you are using Vim-Plug
Plug 'tjdevries/colorbuddy.nvim'
Plug 'marko-cerovac/material.nvim'
```

```lua
-- If you are using Packer
use 'tjdevries/colorbuddy.nvim'
use 'marko-cerovac/material.nvim'
```
Enable the colorscheme:
```vim 
"Vim-Script:
colorscheme material
```

```lua
--Lua:
require('colorbuddy').colorscheme('material')
```

## Configuration

+ There are 6 different styles available:
    + darker
    + lighter
    + default
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


+ To enable flat and minimalist UI by removing the lines between split widows use:

![screen](/media/flat-ui.png)

```vim 
"Vim-Script:
let g:material_flat_ui=1
```

```lua
--Lua:
vim.g.material_flat_ui = 1
```


+ To enable italic comments use:
```vim 
"Vim-Script:
let g:material_italic_comments=1
```

```lua
--Lua:
vim.g.material_italic_comments = 1
```


+ To enable italic keywords like: if, then, else, switch, for, do ,while ...
```vim 
"Vim-Script:
let g:material_italic_keywords=1
```

```lua
--Lua:
vim.g.material_italic_keywords = 1
```


+ To enable italic function names use:
```vim 
"Vim-Script:
let g:material_italic_functions=1
```

```lua
--Lua:
vim.g.material_italic_functions = 1
```

## Functions

+ Toggle the style live without the need to exit NeoVim

![screen](/media/toggle_style.gif)

Just call the function for style switching
```vim
"Vim-Script
:lua require('material').toggle_style()
"This command toggles the style
```

The command can also be mapped to a key for fast style switching
```vim
"Vim-Script:
nnoremap <C-m> :lua require('material').toggle_style()<CR>
```

```lua
--Lua:
vim.api.nvim_set_keymap('n', '<C-m>', [[<Cmd>lua require('material').toggle_style()<CR>]], { noremap = true, silent = true })
```


+ Change the style to a desired one using the function change_style("desired style")
```vim
"Vim-Script:
:lua require('material').change_style("palenight")
"This command changes the style to palenight
```

The command can also be mapped to a key for fast style switching
```vim
"Vim-Script:
nnoremap <C-9> :lua require('material').change_style('lighter')<CR>
nnoremap <C-0> :lua require('material').change_style('darker')<CR>
```

```lua
--Lua:
vim.api.nvim_set_keymap('n', '<C-9>', [[<Cmd>lua require('material').change_style('lighter')<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-0>', [[<Cmd>lua require('material').change_style('darker')<CR>]], { noremap = true, silent = true })
```
