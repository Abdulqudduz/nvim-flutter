return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 60,
-- 35 default
        side = "left",
      },
      renderer = {
        group_empty = true,
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "▶",
              arrow_open = "▼",
            },
          },
        },
      },
      filters = {
        dotfiles = false,
      },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

  end,
}