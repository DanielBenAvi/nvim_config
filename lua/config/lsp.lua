return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp = vim.lsp

      lsp.config["lua_ls"] = {
        cmd = { "lua-language-server" },
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      }

      lsp.config["pyright"] = {
        cmd = { "pyright-langserver", "--stdio" },
      }

      lsp.start(lsp.config["lua_ls"])
      lsp.start(lsp.config["pyright"])
    end,
  },
}
