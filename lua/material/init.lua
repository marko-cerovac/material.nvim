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

-- Load the theme with user configuration
local setup = function (options)
	require('material.config').setup(options)
end

---------------------------------REMOVE AS SOON AS POSSIBLE--------------------------------------------
local set = function ()
	print([[The function "require('material').set()" is deprecated]])
	print('Please use "colorscheme material" instead')
end
---------------------------------REMOVE AS SOON AS POSSIBLE--------------------------------------------

return { setup = setup, set = set }
