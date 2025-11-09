
-- ========================
-- Lazy.nvim bootstrap
-- ========================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- ========================
-- Plugins via lazy.nvim
-- ========================
require("lazy").setup({
    { import = "config.mini"},
    { import = "config.lsp" },
    { import = "config.completion" },
    { import = "config.telescope"},
    { import = "config.nvim-tree"}
})
