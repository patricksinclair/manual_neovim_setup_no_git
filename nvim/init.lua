vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('nvim-treesitter.configs').setup {
  ensure_installed = {}, -- leave empty since you’re doing it manually
  highlight = {
    enable = true,
  },
}

vim.opt.termguicolors = true


require('keymaps')
require('lazy-plugins')
require('options')
require("plugin_configs.telescope")
require("plugin_configs.python_lsp")
require("plugin_configs.noice")
require("plugin_configs.autopairs")
require("plugin_configs.nvim_tree")
require("plugin_configs.mini")
require("plugin_configs.linting")
require("plugin_configs.formatting")

vim.g.ayucolor = "dark"
vim.cmd("colorscheme ayu")
require("plugin_configs.bufferline")
