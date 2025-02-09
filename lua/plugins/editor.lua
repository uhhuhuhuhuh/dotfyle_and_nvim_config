return {
    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },

        config = function()
            require("fzf-lua").setup({ "ivy", })
        end,

        keys = {
            { "<leader>f", function() require("fzf-lua").files({ previewer = false }) end,   desc = "Find Files" },
            { "<leader>b", function() require("fzf-lua").buffers({ previewer = false }) end, desc = "Find Buffers" },
            { "<leader>g", function() require("fzf-lua").grep() end,                         desc = "Grep text" }
        }
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
