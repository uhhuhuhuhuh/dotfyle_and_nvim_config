return {
    {
        'echasnovski/mini.icons',
        lazy = true,
        version = '*',
        config = function()
            require('mini.icons').setup()
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        lazy = true,
        build = ":TSUpdate",

        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    {
        "sainnhe/everforest",
        priority = 1000,
        config = function()
            vim.g.everforest_background = 'hard'

            vim.cmd.colorscheme("everforest")
        end
    },
}
