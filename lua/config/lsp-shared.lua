local M = {}

M.capabilities = function()
  return require("cmp_nvim_lsp").default_capabilities()
end

M.on_attach = function(client, bufnr)
  local bufmap = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
  end

  bufmap("n", "gd", vim.lsp.buf.definition, "Go to definition")
  bufmap("n", "K", vim.lsp.buf.hover, "Hover docs")
  bufmap("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
  bufmap("n", "<leader>ca", vim.lsp.buf.code_action, "Code actions")
  bufmap("n", "gr", vim.lsp.buf.references, "Find references")
  bufmap("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, "Format file")
end

-- Diagnostic key mappings
M.diagnostic_keymaps = function()
  -- Show diagnostics at cursor position
  vim.keymap.set('n', '<leader>ld', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = 'Line diagnostics' })
  
  -- List all diagnostics
  vim.keymap.set('n', '<leader>ad', '<cmd>Telescope diagnostics<CR>', { desc = 'All diagnostics' })
  -- Go to previous buffer
  vim.keymap.set('n', '<leader>xx', '<cmd>b#<CR>', { desc = 'switch between buffer' })
end

-- Format and save function
M.format_save = function()
  -- Formatting
  vim.lsp.buf.format({ async = true }) 
  -- save after formatting
  vim.cmd('w')
end

return M