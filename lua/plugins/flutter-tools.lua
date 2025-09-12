return {
  "akinsho/flutter-tools.nvim",
  ft = "dart",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    local lsp_shared = require("config.lsp-shared")

    require("flutter-tools").setup({
      lsp = {
        color = { enabled = true },
        on_attach = lsp_shared.on_attach,
        capabilities = lsp_shared.capabilities(),
        settings = {
          dart = {
            completeFunctionCalls = true,
            showTodos = true,
          }
        }
      },
      widget_guides = { enabled = true },
      dev_log = { enabled = true, open_cmd = "tabedit" },
      outline = { auto_open = false },
     
    })

    
  end,
}