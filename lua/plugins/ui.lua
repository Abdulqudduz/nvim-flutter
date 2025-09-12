return {
  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "vscode",
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        }
      })
    end
  },

  -- VS Code-like theme
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      require("vscode").setup({
        italic_comments = true,
        disable_nvimtree_bg = true,
        transparent = true,
      })
      require("vscode").load()
    end
  },

  -- Better Dart folding
  {
    "p00f/nvim-ts-rainbow",  -- Better bracket matching helps folding
    config = function()
      require("nvim-treesitter.configs").setup({
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        }
      })
    end
}
}