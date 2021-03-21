# material.nvim
A port or [Material](https://material-theme.site) colorscheme for NeoVim written in lua using [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)

![screen](/media/screenshot1.webp)

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
colorscheme material
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
