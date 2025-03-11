return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",

        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
    {
        "sainnhe/everforest",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("everforest")
        end,
    },

    -- more colorschemes

    --[[ {
        'AlexvZyl/nordic.nvim',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("nordic")
        end
    }, ]]

    --[[ {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function ()
            vim.cmd.colorscheme("onedark")
        end,
    }, ]]

    --[[ {
        "ficcdaf/ashen.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("ashen")
        end
    }, ]]

    --[[ {
        "catppuccin/nvim",
        priority = 1000,
        name = "catppuccin",
        config = function ()
            vim.cmd.colorscheme("catppuccin")
        end,
    }, ]]

    --[[ {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function ()
            vim.cmd.colorscheme("tokyonight")
        end,
    }, ]]
}
