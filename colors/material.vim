let g:material_style='deep ocean'
lua << EOF
package.loaded['material'] = nil
package.loaded['material.util'] = nil

require('material').colorscheme()
EOF
