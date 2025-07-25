vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
print("init loaded")
local ok = require("nvim-treesitter.parsers").has_parser("python")
print("Python parser installed? ", ok)

require('nvim-treesitter.configs').setup {
  ensure_installed = {}, -- leave empty since you’re doing it manually
  highlight = {
    enable = true,
  },
}


require 'keymaps'
require 'lazy-plugins'
require("plugin_configs.telescope")
require("plugin_configs.python_lsp")
require("plugin_configs.noice")
require("plugin_configs.autopairs")
require("plugin_configs.nvim_tree")
