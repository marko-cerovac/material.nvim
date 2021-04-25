lua << EOF
package.loaded['material'] = nil
package.loaded['material.util'] = nil

require('material').set()
EOF
