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

-- Toggle outline (widget tree)
vim.keymap.set("n", "<leader>fo", ":FlutterOutlineToggle<CR>", { desc = "Flutter Outline" })


-- VS Code-like folding - ADDED THIS SECTION
vim.keymap.set('n', '<leader>zf', ':set foldmethod=expr<CR>:set foldexpr=v:lua.require("config.folding").dart_foldexpr()<CR>', { desc = 'Enable Dart folding' })
vim.keymap.set('n', '<leader>zF', ':set foldmethod=indent<CR>', { desc = 'Use indent folding' })

-- Quick fold toggles
vim.keymap.set('n', '<space>', 'za', { desc = 'Toggle fold' })  -- Space to toggle like VS Code
vim.keymap.set('n', '<C-space>', 'zA', { desc = 'Toggle fold recursively' })

-- Folding keybindings (VS Code style)
vim.keymap.set('n', 'zc', 'zc', { desc = 'Fold current' })
vim.keymap.set('n', 'zo', 'zo', { desc = 'Unfold current' })
vim.keymap.set('n', 'za', 'za', { desc = 'Toggle fold' })
vim.keymap.set('n', 'zR', 'zR', { desc = 'Unfold all' })
vim.keymap.set('n', 'zM', 'zM', { desc = 'Fold all' })
vim.keymap.set('n', 'zC', 'zC', { desc = 'Fold all in current' })
vim.keymap.set('n', 'zO', 'zO', { desc = 'Unfold all in current' })

-- Better folding navigation
vim.keymap.set('n', 'zj', 'zj', { desc = 'Next fold' })
vim.keymap.set('n', 'zk', 'zk', { desc = 'Previous fold' })

-- Visual mode folding
vim.keymap.set('v', 'zf', 'zf', { desc = 'Create fold from selection' })
vim.keymap.set('v', 'zd', 'zd', { desc = 'Delete fold in selection' })