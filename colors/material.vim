lua << EOF
package.loaded['material'] = nil
package.loaded['material.util'] = nil
package.loaded['material.colors'] = nil
package.loaded['material.theme'] = nil
package.loaded['material.functions'] = nil

require('material.util').load()
EOF
