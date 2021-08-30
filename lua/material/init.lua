--         ___           ___
--        /\  \         /\__\
--       |::\  \       /:/  /
--       |:|:\  \     /:/  /
--     __|:|\:\  \   /:/  /  ___
--    /::::|_\:\__\ /:/__/  /\__\
--    \:\~~\  \/__/ \:\  \ /:/  /
--     \:\  \        \:\  /:/  /
--      \:\  \        \:\/:/  /
--       \:\__\        \::/  /
--        \/__/         \/__/
--
-- Colorscheme name:        material.nvim
-- Description:             Colorscheme for NeoVim based on the material pallete
-- Author:                  Marko Cerovac <marko.cerovac16@gmail.com>
-- Website:                 https://github.com/marko-cerovac/material.nvim

local util = require('material.util')

local material = {}

-- Load the theme
material.set = function ()
    util.load()
end

-- Load the user configuration
material.setup = function (options)
	require('material.config').setup(options)
end

return material
