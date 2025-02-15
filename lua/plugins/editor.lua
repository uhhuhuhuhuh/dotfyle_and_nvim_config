return {
    {
        "nvim-telescope/telescope.nvim",
        branch = '0.1.x',
        dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
        config = function()
            local actions = require("telescope.actions")

            require("telescope").setup({
                defaults = {
                    preview = false,
                    mappings = {
                        i = {
                            ["<esc>"] = actions.close,
                            ["<C-j>"] = actions.move_selection_next,
                            ["<C-k>"] = actions.move_selection_previous,
                        }
                    },
                },
                pickers = {
                    find_files = { theme = "ivy", layout_config = { height = 15, }, },
                    buffers = { theme = "ivy", layout_config = { height = 15, }, },
                    live_grep = { theme = "ivy", layout_config = { height = 15, preview_width = 0.6 }, preview = true },
                },
            })
        end,

        keys = {
            { "<leader>f", function() require("telescope.builtin").find_files() end, desc = "Find Files" },
            { "<leader>b", function() require("telescope.builtin").buffers() end,    desc = "Find Buffers" },
            { "<leader>g", function() require("telescope.builtin").live_grep() end,  desc = "Grep Text" },
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
    {
        "tpope/vim-fugitive",
        cmd = "Git",
    },
}
