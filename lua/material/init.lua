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

return { setup = setup }
