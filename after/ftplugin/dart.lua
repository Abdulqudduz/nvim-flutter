-- Simple manual folding for Dart
vim.opt_local.foldmethod = "manual"
vim.opt_local.foldlevel = 99

-- Create folds for widgets manually
vim.keymap.set('n', 'zf', 'zf%', { buffer = true, desc = 'Fold to matching bracket' })
vim.keymap.set('n', '<leader>zw', 'V%kzf', { buffer = true, desc = 'Fold entire widget' })

-- VS Code-like folding shortcuts
vim.keymap.set('n', '<space>', 'za', { buffer = true, desc = 'Toggle fold' })
vim.keymap.set('n', '<C-space>', 'zA', { buffer = true, desc = 'Toggle fold recursively' })