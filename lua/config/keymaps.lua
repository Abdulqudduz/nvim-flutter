local config_path = vim.fn.stdpath('config')
local function edit_config_file(file)
  vim.cmd('e ' .. config_path .. '/lua/' .. file)
end

vim.keymap.set('n', '<leader>vc', function()
  edit_config_file('config/keymaps.lua')
end, { desc = 'Edit keymaps' })

vim.keymap.set('n', '<leader>vl', function()
  edit_config_file('config/lsp-shared.lua')
end, { desc = 'Edit LSP config' })

vim.keymap.set('n', '<leader>vi', function()
  vim.cmd('e ' .. config_path .. '/init.lua')
end, { desc = 'Edit init.lua' })

vim.keymap.set('n', '<leader>w', function()
  vim.lsp.buf.format({ async = true }) 
  vim.cmd('w')
end, { desc = 'Format and save file' })


-- Example keymaps for flutter-tools commands
-- Put these after you call require("flutter-tools").setup{}

-- Run flutter app
vim.keymap.set("n", "<leader>fr", ":FlutterRun<CR>", { desc = "Flutter Run" })

-- Hot reload
vim.keymap.set("n", "<leader>fh", ":FlutterReload<CR>", { desc = "Flutter Hot Reload" })

-- Hot restart
vim.keymap.set("n", "<leader>fR", ":FlutterRestart<CR>", { desc = "Flutter Hot Restart" })

-- Quit app
vim.keymap.set("n", "<leader>fq", ":FlutterQuit<CR>", { desc = "Flutter Quit" })

-- Show devices list
vim.keymap.set("n", "<leader>fd", ":FlutterDevices<CR>", { desc = "Flutter Devices" })

-- Show emulators list
vim.keymap.set("n", "<leader>fe", ":FlutterEmulators<CR>", { desc = "Flutter Emulators" })

-- Toggle log window
vim.keymap.set("n", "<leader>fl", ":FlutterLogToggle<CR>", { desc = "Flutter Logs" })

-- Clear toggle log window
vim.keymap.set("n", "<leader>fc", ":FlutterLogClear<CR>", { desc = "Clear flutter Logs" })

-- Flutter copy profile url
vim.keymap.set("n", "<leader>fu", ":FlutterCopyProfilerUrl<CR>", { desc = "Flutter copy profile url" })

-- Toggle outline (widget tree)
vim.keymap.set("n", "<leader>fo", ":FlutterOutlineToggle<CR>", { desc = "Flutter Outline" })

-- File/folder operations with path updates
vim.keymap.set('n', '<leader>re', function()
  require('telescope.builtin').find_files()
end, { desc = 'Find files' })

vim.keymap.set('n', '<leader>rE', function()
  -- This would require a custom function to handle renames
  require('telescope.extensions.file_browser.file_browser')()
end, { desc = 'Rename file/folder' })

-- Spectre key mappings
vim.keymap.set('n', '<leader>ss', '<cmd>lua require("spectre").open()<CR>', { desc = 'Open Spectre search' })
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = 'Search current word' })
vim.keymap.set('v', '<leader>sw', '<cmd>lua require("spectre").open_visual()<CR>', { desc = 'Search selected text' })
vim.keymap.set('n', '<leader>sf', '<cmd>lua require("spectre").open_file_search()<CR>', { desc = 'Search in current file' })

-- File finding keymaps
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope file_browser<CR>', { desc = 'File browser' })
    vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { desc = 'Recent files' })