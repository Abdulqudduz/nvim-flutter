return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-tree/nvim-tree.lua",
  },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- This is the crucial change
        separator_style = "slant",
        always_show_bufferline = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        color_icons = true,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or " "
          return icon .. count
        end,
      }
    })

    -- Tab navigation
    vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
    vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })
    vim.keymap.set("n", "<leader>bp", "<Cmd>BufferLinePick<CR>", { desc = "Pick tab" })
    vim.keymap.set("n", "<leader>bc", "<Cmd>bdelete<CR>", { desc = "Close tab" })

    -- ------------------------------
    -- nvim-tree: Default behavior to open files in the same window
    -- ------------------------------
    -- The previous code for nvim-tree is removed. By default, nvim-tree
    -- will now open files in the current window, which adds them
    -- as a new buffer and displays them in the bufferline.
  end,
}
