# Highlights module

This module is used for applying highlights to all groups that are supported by the theme.
Built-in editor highlights get applied in the init.lua module (as well as treesitter and lsp highlights).
Plugin highlights get applied in the plugins submodule.

## init.lua:
This module returns a table that is further divided into two tables.
These tables contain functions that return highlight group name and values pairs.
+ **main_highlights**
contains functions that get loaded right away.
+ **async_highlights**
contains functions that get loaded async

## plugins:
The objective of this submodule is to extend the main_highlights and async_highlights tables
with plugins that the user enabled.
It will return a table with the same structure as the one in init.lua, and then, the two tables get merged.
