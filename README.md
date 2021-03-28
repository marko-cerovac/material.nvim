# material.nvim
A port or [Material](https://material-theme.site) colorscheme for NeoVim written in lua using [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)
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

There are 6 different styles available:
    default,
    darker,
    lighter,
    oceanic,
    deep ocean,
    palenight

Set the desired style using:
```vim 
"Vim-Script:
let g:material_style = 'darker'
```

```lua
--Lua:
vim.g.material_style = "deep ocean"
```

To enable italic comments use:
```vim 
"Vim-Script:
let g:material_italic_comments=1
```

```lua
--Lua:
vim.g.material_italic_comments = 1
```

To enable italic keywords like: if, then, else, switch, for, do ,while ...
```vim 
"Vim-Script:
let g:material_italic_keywords=1
```

```lua
--Lua:
vim.g.material_italic_keywords = 1
```

To enable italic function names use:
```vim 
"Vim-Script:
let g:material_italic_functions=1
```

```lua
--Lua:
vim.g.material_italic_functions = 1
```
