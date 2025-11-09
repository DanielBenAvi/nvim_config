return {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
        -- Core modules
        require("mini.starter").setup()
        require("mini.basics").setup()
        require("mini.comment").setup()
        require("mini.surround").setup()
        require("mini.icons").setup()
        require("mini.indentscope").setup()
        require("mini.notify").setup()
        require("mini.statusline").setup()
        require("mini.cursorword").setup()
        require("mini.tabline").setup()
        require("mini.pairs").setup()
        require("mini.hipatterns").setup()
        require("mini.ai").setup()

        -- mini.clue setup (popup immediately)
        local miniclue = require('mini.clue')
        miniclue.setup({
            delay = 0,
            triggers = {
                { mode = 'n', keys = '<Leader>' },
                { mode = 'x', keys = '<Leader>' },
                { mode = 'i', keys = '<C-x>' },
                { mode = 'n', keys = 'g' },
                { mode = 'x', keys = 'g' },
                { mode = 'n', keys = "'" },
                { mode = 'n', keys = '`' },
                { mode = 'x', keys = "'" },
                { mode = 'x', keys = '`' },
                { mode = 'n', keys = '"' },
                { mode = 'x', keys = '"' },
                { mode = 'i', keys = '<C-r>' },
                { mode = 'c', keys = '<C-r>' },
                { mode = 'n', keys = '<C-w>' },
                { mode = 'n', keys = 'z' },
                { mode = 'x', keys = 'z' },
            },
            clues = {
                miniclue.gen_clues.builtin_completion(),
                miniclue.gen_clues.g(),
                miniclue.gen_clues.marks(),
                miniclue.gen_clues.registers(),
                miniclue.gen_clues.windows(),
                miniclue.gen_clues.z(),
            }
        })
    end,
}
