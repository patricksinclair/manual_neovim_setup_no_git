require("nvim-tree").setup({
  git = { enable = false }, -- disables git integration
})
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

