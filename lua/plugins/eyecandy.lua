return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { 'BufReadPost', 'BufNewFile' },
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
        "neanias/everforest-nvim",
        priority = 1000,

        config = function()
            vim.cmd.colorscheme("everforest")

            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
            vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
        end,
    },
}
