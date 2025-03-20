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
        "catppuccin/nvim",
        priority = 1000,

        config = function()
            require("catppuccin").setup({
                transparent_background = true,
            })

            vim.cmd.colorscheme("catppuccin-macchiato")
        end,
    },
}
