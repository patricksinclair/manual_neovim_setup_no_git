require("conform").setup({
  formatters_by_ft = {
    python = { "isort", "black" },
  },
  -- Auto format on save
  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 1000,
  },
})

