
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
    { import = "lazy.lsp" },
    { import = "lazy.completion" },
    { import = "lazy.telescope"},
    { import = "lazy.nvim-tree"},
     { import = "lazy.lua-line"},
     { import = "lazy.barbar"},
})
