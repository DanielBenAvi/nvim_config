-- ============================================
-- Plugin Manager setup (lazy.nvim)
-- ============================================

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- Core visuals
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, config = function()
      vim.cmd([[colorscheme tokyonight]])
    end
  },
  { "nvim-lualine/lualine.nvim", config = function()
      require("lualine").setup({ options = { theme = "tokyonight" } })
    end
  },
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({})
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    end
  },
  { "nvim-telescope/telescope.nvim", 
     dependencies = { "nvim-lua/plenary.nvim" },
     config = function ()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
     end
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
{
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  config = function()
    require("noice").setup({
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
        },
      },
      presets = {
        bottom_search = true,  -- search bar כמו Vim native
        command_palette = true, -- floating command line
        long_message_to_split = true,
      },
    })
  end,
},
  -- LSP & Completion
  { import = "config.lsp" },
  { import = "config.completion" },
})
