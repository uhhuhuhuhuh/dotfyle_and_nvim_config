return {
    {
        'echasnovski/mini.pick',
        dependencies = { "nvim-tree/nvim-web-devicons", "nvim-treesitter/nvim-treesitter" },
        version = '*',
        config = function()
            require("mini.pick").setup({
                mappings = {
                    move_down = "<C-j>",
                    move_up = "<c-k>",
                }
            })
        end,

        keys = {
            { "<leader>ff", ":Pick files<cr>",   desc = "Find Files" },
            { "<leader>b",  ":Pick buffers<cr>", desc = "Open buffers" },
            { "<leader>g",  ":Pick grep<cr>",    desc = "Grep Text" },
        },
    },
    {
        'echasnovski/mini.pairs',
        event = "InsertEnter",
        version = '*',

        config = function()
            require('mini.pairs').setup()
        end
    },
    {
        "mbbill/undotree",
        keys = { { "<leader>u", ":UndotreeToggle<CR>", desc = "Undo tree toggle" } }
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
        keys = {
            { 'gc', mode = { 'n', 'x' } },
            { 'gb', mode = { 'n', 'x' } },
        },
    },
    {
        "stevearc/aerial.nvim",
        config = function()
            require("aerial").setup()
        end,

        keys = {
            { "<leader>a", ":AerialToggle<cr>", desc = "Toggle aerial" },
            { "{",         ":AerialNext<cr>",   desc = "Aerial next" },
            { "}",         ":AerialPrev<cr>",   desc = "Aerial next" },
        },
    },
}
