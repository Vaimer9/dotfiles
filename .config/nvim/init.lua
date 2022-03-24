require('v9.plugins')
require('v9.options')
require('v9.keybinds')
require('v9.utils')

require('v9.configuration.indent-blankline')
require('v9.configuration.bufferline')
require('v9.configuration.nvim-tree')
require('v9.configuration.presence')
-- require('v9.configuration.statusline')
-- require('v9.configuration.feline')
require('v9.configuration.telescope')
require('v9.configuration.theme')
require('v9.configuration.airline')

require('v9.configuration.lsp.cmp')
require('v9.configuration.lsp.lsp-config')
require('v9.configuration.lsp.treesitter')

-- Startup Functions
greet()
