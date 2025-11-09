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
            -- lua
            lsp.config["lua_ls"] = {
                cmd = { "lua-language-server" },
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                    },
                },
            }
            -- python
            lsp.config["pyright"] = {
                cmd = { "pyright-langserver", "--stdio" },
            }
            -- bash 
            lsp.config["bashls"] = {
                cmd = { "bash-language-server", "start" },
            }

            lsp.start(lsp.config["lua_ls"])
            lsp.start(lsp.config["pyright"])
            lsp.start(lsp.config["bashls"])
        end,
    },
}
