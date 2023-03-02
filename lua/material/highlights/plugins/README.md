# Plugins module

This module contains various plugins that the theme supprts.
Every plugin is located in a file that has the same name as the plugin
(for example nvim-cmp.lua or telescope.lua).


Those files are modules that return a table. 
Each table consists of two items:
+ **load()** function
+ **async** boolean


The module **init.lua** goes trough the user settings,
and tries to apply the plugins one by one.
First, it opens the file that matches the name in the config.
Then it checks if the async boolean is set to true.
If it is, the load() funtion gets placed inside the async_highlights table
and that means that highlights for the plugin get loaded asynchronously.
If it is set to false, the load function gets placed into the main_highlights table.
The plugin will then be loaded in the current iteratrion of the main loop.


The reason for this system is future-proofing.
This way, we can add support for as many plugins as we want,
without slowing down the startup time of the theme.
Also, if you aren't using a certain plugin,
there is no reason for it to get highlighted.


If you want to add support for a plugin, follow this template:
```lua
local colors = require "material.colors"

-- remove the variables that you won't be needing
-- to see what colors are available, check colors/init.lua
local m = colors.main
local e = colors.editor
local g = colors.git
local l = colors.lsp
local s = colors.syntax
local b = colors.backgrounds

local M = {}

M.load = function()
    local plugin_hls = {
        -- HighlightName = { values },
        -- HighlightName = { values },
        -- ...
    }

    return plugin_hls
end

M.async = true -- should the plugin highlights be loaded async [true/false]

return M
```
