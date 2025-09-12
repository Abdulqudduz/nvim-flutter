return {
  "neovim/nvim-lspconfig",
  config = function()
    local lsp_shared = require("config.lsp-shared")
    lsp_shared.diagnostic_keymaps() 
    local lspconfig = require("lspconfig")
    
    -- Lua LSP
    lspconfig.lua_ls.setup({
      capabilities = lsp_shared.capabilities(),
      on_attach = lsp_shared.on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
      }
    })
    
    -- Add other LSP servers as needed
  end
}