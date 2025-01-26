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
        'stevearc/oil.nvim',
        dependencies = { "echasnovski/mini.icons" },

        config = function ()
            require("oil").setup()
        end,

        keys = {
            {
                "<leader>o",
                function ()
                    vim.cmd("Oil")
                end,
                desc = "Open oil"
            }
        }
    },
}
