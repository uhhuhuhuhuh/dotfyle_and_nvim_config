return {
    {
        "L3MON4D3/LuaSnip",
        lazy = true,
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        opts = {
            history = true,
            delete_check_events = "TextChanged",
        },
    },
    {
        'saghen/blink.cmp',
        version = '0.*',
        lazy = true,

        dependecies = { "L3MON4D3/LuaSnip", },

        config = function()
            require("blink.cmp").setup({
                completion = {
                    list = {
                        max_items = 10,
                    },
                    menu = {
                        draw = {
                            treesitter = { 'lsp' }
                        }
                    }
                },

                keymap = {
                    preset = 'default',

                    ['<C-k>'] = { 'show', 'show_documentation', 'hide_documentation' },
                    ["<C-L>"] = { "snippet_forward", "fallback" },
                    ["<C-J>"] = { "snippet_backward", "fallback" },
                    ['<tab>'] = { "select_and_accept", "fallback" },
                    ['<C-e>'] = { "cancel", "fallback" },
                },


                snippets = { preset = 'luasnip' },

                -- remove completions for cmdline
                cmdline = { sources = {} },

                sources = {
                    default = { 'lsp', 'path', 'snippets', 'buffer' },
                }
            })
        end,
    },
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
        "stevearc/aerial.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
        config = function()
            require("aerial").setup()
        end,

        keys = {
            { "<leader>a", ":AerialToggle!<cr>", desc = "Open code outline" },
            { "{",         ":AerialPrev<CR>",    desc = "Prev point Aerial" },
            { "}",         ":AerialNext<CR>",    desc = "Next point Aerial" },
        },
    },
    {
        "echasnovski/mini.splitjoin",
        config = function()
            require('mini.splitjoin').setup({
                mappings = {
                    toggle = "gs",
                },
            })
        end,

        keys = { { "gs", desc = "Splitjoin" } }
    },
    {
        "MagicDuck/grug-far.nvim",
        cmd = "Grug",
        config = function()
            require("grug-far").setup()
        end,

        keys = {
            { "<C-g>", function() require('grug-far').open() end, desc = "Open grug-far"}
        }
    },
}
