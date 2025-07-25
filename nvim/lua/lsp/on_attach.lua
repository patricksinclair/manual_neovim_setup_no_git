return function(_, bufnr)
  local map = function(mode, keys, func, desc)
    vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = desc })
  end

  map('n', '<leader>r', vim.lsp.buf.rename, 'LSP: Rename')
  map({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, 'LSP: Code Action')
  map('n', 'gd', vim.lsp.buf.definition, 'LSP: Go to Definition')
  map('n', 'gD', vim.lsp.buf.declaration, 'LSP: Go to Declaration')
  map('n', 'gi', vim.lsp.buf.implementation, 'LSP: Go to Implementation')
  map('n', 'gr', require('telescope.builtin').lsp_references, 'LSP: References')
  map('n', 'K', vim.lsp.buf.hover, 'LSP: Hover Docs')
  map('n', '<C-k>', vim.lsp.buf.signature_help, 'LSP: Signature Help')
  map('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, 'LSP: Format Buffer')
  map('n', '[d', vim.diagnostic.goto_prev, 'LSP: Prev Diagnostic')
  map('n', ']d', vim.diagnostic.goto_next, 'LSP: Next Diagnostic')
  map('n', '<leader>E', vim.diagnostic.open_float, 'LSP: Show Diagnostic')
  map('n', '<leader>q', vim.diagnostic.setloclist, 'LSP: Quickfix Diagnostics')
end

