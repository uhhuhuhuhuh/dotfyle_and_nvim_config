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
    --[[ {
        "navarasu/onedark.nvim",
        config = function ()
            vim.cmd.colorscheme("onedark")
        end
    }, ]]
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup()
            vim.cmd.colorscheme("tokyonight-storm")
        end
    },
    --[[ {
        "sainnhe/everforest",
        priority = 1000,
        config = function()
            vim.g.everforest_background = 'hard'

            vim.cmd.colorscheme("everforest")
        end
    }, ]]
}
