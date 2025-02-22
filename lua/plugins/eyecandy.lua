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
    -- Atom colorscheme basically
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            require("onedark").setup({
                colors = {
                    -- make grey brighter
                    grey = "#848484",
                },
                transparent = true,
                code_style = {
                    comments = "bold",
                    keywords = "bold",
                    functions = "italic",
                },
            })
            vim.cmd.colorscheme("onedark")
        end
    },
}
