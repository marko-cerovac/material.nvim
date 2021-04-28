-- Define style_switch
if vim.g.material_style_switch == nil then
    vim.g.material_style_switch = 0
end

-- Change_style takes a style name as a parameter and switches to that style
 local change_style = function (style)
     vim.g.material_style = style
     package.loaded['material'] = nil
     package.loaded['material.util'] = nil
     package.loaded['material.theme'] = nil
     package.loaded['material.colors'] = nil
     package.loaded['material.functions'] = nil
     require('material').set()
 end

-- Toggle_style takes no parameters toggles the style on every function call
 local toggle_style = function (print_info)
    local switch = { "darker", "lighter", "palenight", "oceanic", "deep ocean" }
    print(vim.g.material_style_switch)
    vim.g.material_style_switch = (vim.g.material_style_switch % table.getn(switch)) + 1
    print(vim.g.material_style_switch)
  change_style(switch[vim.g.material_style_switch])
  if (print_info == true) then
      print(vim.g.material_style)
  end
 end

 return {
     change_style = change_style,
     toggle_style = toggle_style
}

-- NOT WORKING
