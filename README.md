# material.nvim
A port or [Material](https://material-theme.site) colorscheme for NeoVim written in lua using [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim).

Theme is inspired by https://github.com/kaicataldo/material.vim

![screen](/media/Material.png)

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
    + darker,
    + lighter,
    + default,
    + oceanic,
    + palenight
    + deep ocean,

Set the desired style using:
```vim 
"Vim-Script:
let g:material_style = 'darker'
```

```lua
--Lua:
vim.g.material_style = "deep ocean"
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

+ Toggle the style live without the need to exit NeoVim using the function toggle_style()

![screen](/media/toggle_style.gif)

To do this, a global variable called style_switch should be set to zero 
```vim
Vim-Script:
:let g:style_switch=0
"This variable is necessery for toggling the style
"The best thing to do is to put it somwhere in your init.vim/init.lua
```
Then, the function toggle_style() can be used
```vim
"Vim-Script
:lua require('material').toggle_style()
"This command toggles the style
```

The command can then be mapped to key for fast theme switching
```vim
"Vim-Script:
nnoremap <C-m> :lua require('material').toggle_style()<CR>
```

```lua
--Lua:
vim.api.nvim_set_keymap('n', '<C-m>', [[<Cmd>lua require('material').toggle_style()<CR>]], { noremap = true, silent = true }
```

+ Change the style to a desired one using the function change_style("desired style")
```vim
"Vim-Script:
:lua require('material').change_style("palenight")
"This command changes the style to palenight
```

The command can then be mapped to key for fast theme switching
```vim
"Vim-Script:
nnoremap <C-9> :lua require('material').change_style('lighter')<CR>
nnoremap <C-0> :lua require('material').change_style('darker')<CR>
```

```lua
--Lua:
vim.api.nvim_set_keymap('n', '<C-9>', [[<Cmd>lua require('material').change_style('lighter')<CR>]], { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<C-0>', [[<Cmd>lua require('material').change_style('darker')<CR>]], { noremap = true, silent = true }
```
