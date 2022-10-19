# Colors module

This module is used to define the main colors used by the theme,
as well as the style specific colors and the colors that depend on the user config

files:
 ## **init.lua**:

 Used for defining main colors and style-specific colors.
 The module defines and returns a single colors table that contains all of the colors
 that the theme uses for highlighting.

 The colors table is further devided into subtables:
 ### main:
 This table contains main colors used mostly for syntax highlighting.
 Colors like blue, green, cyan, darkred, white etc. are defined here.
 ### editor:
 This table contains colors used for highlighting different parts of the editor.
 Colors like the main background, cursor, window-borders, visual mode background etc.
 are in this table.
 ### syntax:
 This table contains colors that will be used for syntax highlighting.
 The table contains these colors:
 + variable
 + keyword
 + value
 + operator
 + fn (function)
 + string
 + type
 ### backgrounds:
 This table contains background colors for different parts of the editor.
 These colors are going to be changed to a darker shade depending on the
 constrast table in the user setup function.

 ## **conditionals.lua**:
 Used for applying colors that depend on the user config.
 Also, this is the module that goes trough the contrast table
 and applies the darker backgrounds.
