-- Load telescope and dependencies
local ok, telescope = pcall(require, 'telescope')
if not ok then
  vim.notify('Telescope not found')
  return
end

telescope.setup {
	  defaults = {
    mappings = {
      i = { -- Insert mode
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      },
      n = { -- Normal mode (optional, for consistency)
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      },
    },
  },
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {},
    },
  },
}

-- Load extensions (safely)
pcall(telescope.load_extension, 'fzf')
pcall(telescope.load_extension, 'ui-select')

-- Built-in pickers
local builtin = require('telescope.builtin')

-- Keybindings
local map = vim.keymap.set
map('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
map('n', '<leader>fg', builtin.live_grep,  { desc = '[F]ind by [G]rep' })
map('n', '<leader>fb', builtin.buffers,    { desc = '[F]ind [B]uffers' })
map('n', '<leader>fh', builtin.help_tags,  { desc = '[F]ind [H]elp' })

map('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Search in current buffer' })

map('n', '<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath('config') }
end, { desc = '[S]earch [N]eovim config' })

