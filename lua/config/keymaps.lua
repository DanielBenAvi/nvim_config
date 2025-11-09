
-- ========================
-- Leader keymaps
-- ========================
vim.keymap.set('n', '<leader>w', ':wa<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', ':qa<CR>', { desc = 'Quit file' })
vim.keymap.set('n', '<leader>c', ':bd<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>n', ':enew<CR>', { desc = 'New buffer' })
vim.keymap.set('n', '<leader>r', ':source %<CR>', { desc = 'Source current file' })

