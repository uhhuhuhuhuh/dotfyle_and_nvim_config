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
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup()
        end,
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
        "tpope/vim-fugitive",
        cmd = "Git",
    },
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        config = function()
            require("trouble").setup()
        end,
        keys = {
            { "<leader>w", ":Trouble diagnostics toggle<cr>",              desc = "Diagnostics (Trouble)", },
            { "<leader>W", ":Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)", },
        }
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },

        config = function()
            require("todo-comments").setup()

            vim.keymap.set('n', "<leader>t", ":Trouble todo<cr>", { desc = "Open todo comments in trouble" })
        end,
    },
}
