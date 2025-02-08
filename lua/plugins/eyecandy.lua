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
        end
    },
    --[[ {
        "sainnhe/everforest",
        priority = 1000,
        config = function()
            -- vim.g.everforest_background = 'hard'

            vim.cmd.colorscheme("everforest")
        end
    }, ]]
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            require("onedark").setup({
                code_style = {
                    comments = "bold",
                    keywords = "bolditalic",
                    functions = "italic",
                }
            })
            vim.cmd.colorscheme("onedark")
        end,
    }
}
