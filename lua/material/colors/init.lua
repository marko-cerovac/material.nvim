local high_visibility = require "material.util.config".settings.high_visibility

---colors table
local colors = {
  ---main colors
  main = {
    white      = "#EEFFFF",
    gray       = "#717CB4",
    black      = "#000000",
    red        = "#F07178",
    green      = "#C3E88D",
    yellow     = "#FFCB6B",
    blue       = "#82AAFF",
    paleblue   = "#B0C9FF",
    cyan       = "#89DDFF",
    purple     = "#C792EA",
    orange     = "#F78C6C",
    -- pink       = "#FF9CAC",

    darkred    = "#DC6068",
    darkgreen  = "#ABCF76",
    darkyellow = "#E6B455",
    darkblue   = "#6E98EB",
    darkcyan   = "#71C6E7",
    darkpurple = "#B480D6",
    darkorange = "#E2795B",
  },

  ---colors applied to the editor
  editor = {
    link   = "#80CBC4",
    cursor = "#FFCC00",
    title  = "#EEFFFF",
  },

  lsp = {
    error = "#FF5370",
  },

  syntax = {},
  git = {},
  backgrounds = {},
}

-- Style specific colors

if vim.g.material_style == "darker" then
  -- Darker theme style

  if high_visibility.darker then
    -- Darker theme style with high contrast
    colors.editor.line_numbers = "#5C5C5C"
    colors.syntax.comments     = "#757575"
  else
    -- default Darker theme style
    colors.editor.line_numbers = "#424242"
    colors.syntax.comments     = "#515151"
  end

  colors.editor.bg        = "#212121"
  colors.editor.bg_alt    = "#1A1A1A"
  colors.editor.fg        = "#B0BEC5"
  colors.editor.fg_dark   = "#8C8B8B"
  colors.editor.selection = "#404040"
  colors.editor.contrast  = "#1A1A1A"
  colors.editor.active    = "#323232"
  colors.editor.border    = "#343434"
  colors.editor.highlight = "#3F3F3F"
  colors.editor.disabled  = "#474747"
  colors.editor.accent    = "#FF9800"
elseif vim.g.material_style == "lighter" then
  -- Lighter theme style

  if high_visibility.lighter then
    -- Lighter theme style with high contrast
    colors.editor.fg           = "#213B47" -- 20% darkened
    colors.editor.fg_dark      = "#61747D" -- 20% darkened
    colors.editor.selection    = "#e2e9e9" -- 15% saturation, 10% lightness
    colors.editor.line_numbers = "#B6BFC3" -- 10% darkened
    colors.editor.accent       = "#0089A1" -- 20% darkened
    colors.syntax.comments     = "#778C96" -- 20% darkened

    colors.main.red            = "#B20602" -- 20% darkened
    colors.main.green          = "#5E8526" -- 20% darkened
    colors.main.yellow         = "#C37101" -- 20% darkened
    colors.main.blue           = "#2E4F85" -- 20% darkened
    colors.main.paleblue       = "#54637D" -- 20% darkened
    colors.main.cyan           = "#067A82" -- 20% darkened
    colors.main.purple         = "#491ACC" -- 20% darkened
    colors.main.orange         = "#C43A14" -- 20% darkened
    colors.main.pink           = "#CC203D" -- 20% darkened
  else
    -- default Lighter theme style
    colors.editor.fg           = "#546E7A"
    colors.editor.fg_dark      = "#94A7B0"
    colors.editor.selection    = "#80CBC4"
    colors.editor.line_numbers = "#CFD8DC"
    colors.editor.accent       = "#00BCD4"
    colors.syntax.comments     = "#AABFC9"

    colors.main.red            = "#E53935"
    colors.main.green          = "#91B859"

    colors.main.yellow         = "#F6A434"
    colors.main.blue           = "#6182B8"
    colors.main.paleblue       = "#8796B0"
    colors.main.cyan           = "#39ADB5"
    colors.main.purple         = "#7C4DFF"
    colors.main.orange         = "#F76D47"
    colors.main.pink           = "#FF5370"
  end

  colors.editor.bg        = "#FAFAFA"
  colors.editor.bg_alt    = "#FFFFFF"
  colors.editor.contrast  = "#EEEEEE"
  colors.editor.active    = "#E7E7E8"
  colors.editor.border    = "#D3E1E8"
  colors.editor.highlight = "#E7E7E8"
  colors.editor.disabled  = "#D2D4D5"
  colors.editor.cursor    = "#272727"

  colors.editor.white     = "#FFFFFF"
  colors.editor.gray      = "#717CB4"
  colors.editor.title     = colors.editor.black
elseif vim.g.material_style == "palenight" then
  -- Palenight theme style

  colors.editor.bg           = "#292D3E"
  colors.editor.bg_alt       = "#1B1E2B"
  colors.editor.fg           = "#A6ACCD"
  colors.editor.fg_dark      = "#717CB4"
  colors.editor.selection    = "#444267"
  colors.editor.contrast     = "#202331"
  colors.editor.active       = "#414863"
  colors.editor.border       = "#364367"
  colors.editor.line_numbers = "#3A3F58"
  colors.editor.highlight    = "#444267"
  colors.editor.disabled     = "#515772"
  colors.editor.accent       = "#AB47BC"
  colors.syntax.comments     = "#676E95"
elseif vim.g.material_style == "deep ocean" then
  -- Deep Ocean theme style

  colors.editor.bg           = "#0F111A"
  colors.editor.bg_alt       = "#090B10"
  colors.editor.fg           = "#A6ACCD"
  -- colors.editor.fg_darker    = "#8DA3CA" -- TODO
  colors.editor.fg_dark      = "#717CB4"
  colors.editor.selection    = "#1F2233"
  colors.editor.contrast     = "#090B10"
  colors.editor.active       = "#1A1C25"
  colors.editor.border       = "#232637"
  colors.editor.line_numbers = "#3B3F51"
  colors.editor.highlight    = "#1F2233"
  colors.editor.disabled     = "#464B5D"
  colors.editor.accent       = "#84FFFF"
  colors.syntax.comments     = "#464B5D"
elseif vim.g.material_style == "oceanic" then
  -- Oceanic theme style

  colors.editor.bg           = "#25363B"
  colors.editor.bg_alt       = "#1C2C30"
  colors.editor.fg           = "#B0BEC5" -- keep the old one
  -- colors.editor.fg           = "#ADD8DE" -- keep the old one
  colors.editor.fg_dark      = "#7C9EAD"
  colors.editor.selection    = "#395B65"
  colors.editor.border       = "#355058"
  colors.editor.line_numbers = "#426367"
  colors.editor.highlight    = "#354A51" -- highlight
  colors.editor.disabled     = "#3E5F64"
  colors.editor.accent       = "#11bba3"
  colors.editor.contrast     = "#1E272C"
  colors.editor.active       = "#314549"
  colors.syntax.comments     = "#546E7A"
else
  vim.g.material_style       = "hybrid"
  -- Oceanic theme style
  colors.main.white          = "#D9D9D9"
  colors.main.purple         = "#B294BB"
  colors.main.cyan           = "#8ABEB7"
  colors.editor.bg           = "#263238"
  colors.editor.bg_alt       = "#1C2C30"
  colors.editor.fg           = "#81A2BE"
  colors.editor.fg_dark      = "#CC6666"
  colors.editor.selection    = "#455A64"
  colors.editor.border       = "#355058"
  colors.editor.line_numbers = "#426367"
  colors.editor.highlight    = "#354A51" -- highlight
  colors.editor.disabled     = "#3E5F64"
  colors.editor.accent       = "#11BBA3"
  colors.editor.contrast     = "#1E272C"
  colors.editor.active       = "#314549"
  colors.syntax.comments     = "#546E7A"
end

---syntax colors
colors.syntax.variable = colors.editor.fg
colors.syntax.field    = colors.editor.fg
colors.syntax.keyword  = colors.main.purple
colors.syntax.value    = colors.main.orange
colors.syntax.operator = colors.main.cyan
colors.syntax.fn       = colors.main.blue
colors.syntax.string   = colors.main.green
colors.syntax.type     = colors.main.purple

-- Reskin syntax for hybrid
if vim.g.material_style == "hybrid" then
  colors.syntax.variable   = colors.main.white
  colors.syntax.field      = colors.main.white
  colors.syntax.keyword    = colors.main.purple
  colors.syntax.identifier = colors.main.white
  colors.syntax.storage    = colors.main.white
  -- colors.syntax.keyword  = "#CF8B59"
  colors.syntax.value      = colors.main.orange
  colors.syntax.operator   = colors.main.cyan
  colors.syntax.fn         = "#F0C674"
  colors.syntax.string     = colors.main.green
  colors.syntax.type       = colors.editor.fg_dark
end

---git colors
colors.git.added                       = colors.main.green
colors.git.removed                     = colors.main.red
colors.git.modified                    = colors.main.blue

---lsp colors
colors.lsp.warning                     = colors.main.yellow
colors.lsp.info                        = colors.main.paleblue
colors.lsp.hint                        = colors.main.pink

---contrasted backgrounds
colors.backgrounds.sidebars            = colors.editor.bg
colors.backgrounds.floating_windows    = colors.editor.bg
colors.backgrounds.non_current_windows = colors.editor.bg
colors.backgrounds.cursor_line         = colors.editor.active

return colors
