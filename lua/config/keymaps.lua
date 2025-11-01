-- ============================================
-- Keymaps
-- ============================================

vim.g.mapleader = " "

local keymap = vim.keymap.set
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit" })
keymap("i", "jk", "<ESC>", { desc = "Exit insert mode" })
