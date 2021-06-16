-- Define style_switch
if vim.g.material_style_switch == nil then
    vim.g.material_style_switch = 0
end

-- Change_style takes a style name as a parameter and switches to that style
 local change_style = function (style)
     vim.g.material_style = style
     print("Material style: ", style)
     vim.cmd[[colorscheme material]]
 end

-- Toggle_style takes no parameters toggles the style on every function call
 local toggle_style = function ()
    local switch = { "darker", "lighter", "palenight", "oceanic", "deep ocean" }
    vim.g.material_style_switch = (vim.g.material_style_switch % table.getn(switch)) + 1
  change_style(switch[vim.g.material_style_switch])
 end

 local toggle_eob = function ()
    if vim.g.material_hide_eob == nil then
        vim.g.material_hide_eob = true
    else
        vim.g.material_hide_eob = nil
    end
    vim.cmd[[colorscheme material]]
 end

 return {
     change_style = change_style,
     toggle_style = toggle_style,
     toggle_eob = toggle_eob
}
