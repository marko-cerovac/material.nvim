 <div align="center">
<p align="center">
  <img width="302" height="302" src="https://user-images.githubusercontent.com/76592799/150905447-8ae16047-4646-4f54-b122-a5f85ef59782.png">
</p>


##  material.nvim

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)


The original [Material](https://material-theme.site) theme now available for [NeoVim](https://neovim.io/)

---

</div>

## 🔱 Info
A port of [Material](https://material-theme.site) colorscheme for NeoVim written in Lua

Material.nvim is meant to be a fast and modern colorscheme written in Lua that supports a lot of the new features
added to NeoVim like built-in [LSP](https://github.com/neovim/nvim-lspconfig) and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

## 🌊 Features

+ 5 styles to choose from

    + Oceanic ![2022-04-18-01:21:38-screenshot](https://user-images.githubusercontent.com/76592799/163740712-493ff2e9-cd4f-41e0-b7cd-595b58924816.png)

    + Deep ocean ![2022-04-18-01:21:16-screenshot](https://user-images.githubusercontent.com/76592799/163740695-3c34201c-7ae4-482f-9548-53d08701bdd5.png)

    + Palenight ![2022-04-18-01:21:33-screenshot](https://user-images.githubusercontent.com/76592799/163740722-5bad7a23-a93d-446b-901a-fa2cae0c611e.png)

    + Lighter ![2022-04-18-01:21:28-screenshot](https://user-images.githubusercontent.com/76592799/163740732-bfb9bde2-f56b-48af-b8be-be8b1e18fef3.png)

    + Darker ![2022-04-18-01:21:22-screenshot](https://user-images.githubusercontent.com/76592799/163740743-02c243ae-512d-4707-b865-5261e09072dd.png)



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

+ Asynchronous highlight loading which makes the theme blazingly fast

+ Added functions for live theme switching without the need to restart NeoVim

+ Two [Lualine](https://github.com/hoob3rt/lualine.nvim) themes

	+ Default:
	![default-oceanic](https://user-images.githubusercontent.com/76592799/152083490-d0d3631f-6652-4fb0-aea5-1feb662ee01c.png)
	![default-darker](https://user-images.githubusercontent.com/76592799/152083516-744eaad0-4803-4910-ac79-74acad5f306d.png)
	![default-deep-ocean](https://user-images.githubusercontent.com/76592799/152083521-a0951e57-53aa-4d1a-8b3b-d374e74eae3e.jpg)
	![default-palenight](https://user-images.githubusercontent.com/76592799/152083524-3c618c5b-f3f2-480d-8890-a8c36a356e08.png)
	![default-lighter](https://user-images.githubusercontent.com/76592799/152083531-ae9f5b3f-4b24-4ab6-a974-e5662d1deaca.png)
	
	+ Stealth
	![stealth-oceanic](https://user-images.githubusercontent.com/76592799/152083543-bd887c52-c05e-4913-bab0-5de99bac76df.png)
	![stealth-darker](https://user-images.githubusercontent.com/76592799/152083585-c8ea9e62-8188-4935-911b-c5da818aa93f.png)
	![stealth-deep-ocean](https://user-images.githubusercontent.com/76592799/152083592-157ea3bc-6de9-40b0-a39b-5c0c1be1e0f6.png)
	![stealth-palenight](https://user-images.githubusercontent.com/76592799/152083601-bbb22742-e5eb-452a-98cf-93a8ef6c7d11.png)
	![stealth-lighter](https://user-images.githubusercontent.com/76592799/152083608-ee859def-be8b-443d-a871-987d5ca3e948.png)

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
vim.cmd 'colorscheme material'
```


For a comlete guide on usage and configuration of the theme, see ```:help material.nvim```.

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
let g:material_style = "darker"
```

```lua
--Lua:
vim.g.material_style = "deep ocean"
```

The configuration of different options is done trough a setup function
```vim
lua << EOF
require('material').setup()
EOF
```

This is an example of the function with the default values
```lua
require('material').setup({

	contrast = {
		sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = false, -- Enable contrast for floating windows
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = false, -- Enable contrast background for the sign column
		cursor_line = false, -- Enable darker background for the cursor line
		non_current_windows = false, -- Enable darker background for non-current windows
		popup_menu = false, -- Enable lighter background for the popup menu
	},

	italics = {
		comments = false, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},

	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},

	high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false -- Enable higher contrast text for darker style
	},

	disable = {
		borders = false, -- Disable borders between verticaly split windows
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	},

	lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

	async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

	custom_highlights = {} -- Overwrite highlights with your own
})
```

After passing the configuration to a setup function, make sure to enable the colorscheme:

```vim
colorscheme material
```

```lua
vim.cmd 'colorscheme material'
```

This is an example of overwriting the default highlights (most users will never need to do this)
```lua
require('material').setup{
	custom_highlights = {
		CursorLine = { fg = '#0000FF', gui = 'underline' },
		LineNr = { bg = '#FF0000' }
	}
}
```

To enable the lualine themes, first set the theme in your lualine settings to `auto` or `material`
```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'auto'
    or
    theme = 'material'
    -- ... your lualine config
  }
}
```
Then, choose the style trough a variable called ```lualine_style``` in the theme setup function
```lua
require('material').setup({
	lualine_style = 'default' -- the default style
	or
	lualine_style = 'stealth' -- the stealth style
})
```

If the theme, doesn't look right, it's probably because material.nvim is being loaded before lualine,
causing the other material theme that comes built-in to lualine to be used.
To fix this, either load material.nvim after lualine (preferred way)
or set the lualine theme to one of these two values in your lualine settings
```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'material-nvim' -- the default style
    or
    theme = 'material-stealth' -- the stealth style
    -- ... your lualine config
  }
}
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
