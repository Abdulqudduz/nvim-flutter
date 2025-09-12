return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "dart", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "html", "css" },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true
      },
      -- ADD THIS SECTION FOR FOLDING
      fold = {
        enable = true,
        fold_virt_text = true, -- Show folded text preview
        indent_lines = true, -- Show indent lines when folded
        disable = { "dart" }, -- Dart folding can be buggy, enable if you want
      }
    })
  end
}
    -- Treesitter folding config
    -- vim.o.foldmethod = "expr"
    -- vim.o.foldexpr = "nvim_treesitter#foldexpr()"
    -- vim.o.foldenable = false
    -- vim.o.foldlevel = 99
    -- vim.o.foldlevelstart = 99
