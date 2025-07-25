vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
print("init loaded")

require 'keymaps'
require 'lazy-plugins'
require("plugin_configs.telescope")
require("plugin_configs.python_lsp")
require("plugin_configs.noice")
require("plugin_configs.autopairs")
