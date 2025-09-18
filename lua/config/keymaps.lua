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