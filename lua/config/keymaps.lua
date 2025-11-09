
-- ========================
-- Leader keymaps
-- ========================
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit file' })
vim.keymap.set('n', '<leader>c', ':bd<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>n', ':enew<CR>', { desc = 'New buffer' })
vim.keymap.set('n', '<leader>r', ':source %<CR>', { desc = 'Source current file' })

-- ========================
-- Buffer navigation
-- ========================
vim.keymap.set('n', '<leader>l', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>h', ':bprevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })

