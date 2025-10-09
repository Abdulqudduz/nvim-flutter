return {
  -- Autocompletion engine
  { "hrsh7th/nvim-cmp" },
  
  -- Snippet engine
  { "L3MON4D3/LuaSnip" },
  
  -- LSP utilities
  { "onsails/lspkind.nvim" },
  
  -- Plenary (required for many plugins)
  { "nvim-lua/plenary.nvim" },
  
  -- LSP capabilities source
  { "hrsh7th/cmp-nvim-lsp" },
  
  -- CHOOSE ONLY ONE OF THESE:
  -- Option 1: Simple Copilot
  {
    "github/copilot.vim",
    config = function()
      vim.defer_fn(function()
        vim.cmd('Copilot setup')
      end, 100)
    end
  },  -- ← ADD THIS COMMA
  
  -- Spectre for project-wide search/replace
  {
    "nvim-pack/nvim-spectre",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("spectre").setup({
        color_devicons = true,
        open_cmd = 'vnew',
        live_update = true, -- auto execute search again when you write any file in vim
      })
    end
  }
  
  -- OR Option 2: Advanced Copilot (uncomment this and comment the simple version)
  -- {
  --   "zbirenbaum/copilot.lua",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup({
  --       suggestion = { enabled = true },
  --       panel = { enabled = true },
  --     })
  --   end,
  -- },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   dependencies = { "copilot.lua" },
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end
  -- }
}