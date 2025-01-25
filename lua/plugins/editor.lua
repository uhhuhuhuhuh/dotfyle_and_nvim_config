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
        "ibhagwan/fzf-lua",
        dependencies = { "echasnovski/mini.icons", "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("fzf-lua").setup {
                winopts = {
                    fullscreen = true,
                }
            }
        end,
        keys = {
            {
                "<leader>ff",
                function()
                    require("fzf-lua").files()
                end,
                desc = "Find Files"
            },
            {
                "<leader>g",
                function()
                    require("fzf-lua").grep()
                end,
                desc = "Grep Text",
            },
            {
                "<leader>fd",
                function()
                    require("fzf-lua").lsp_document_diagnostics()
                end,
                desc = "File Diagnostics"
            },
            {
                "<leader>fD",
                function()
                    require("fzf-lua").lsp_workspace_diagnostics()
                end,
                desc = "Directory Diagnostics"
            },
        }
    },
    {
        'echasnovski/mini.splitjoin',
        event = { 'BufReadPost', 'BufNewFile' },
        version = '*',
        config = function ()
            require('mini.splitjoin').setup({
                mappings = {
                    toggle = 'gs',
                }
            })
        end
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
            { 'gc', mode = { 'n', 'v' } },
            { 'gb', mode = { 'n', 'v' } },
        },
    },
    {
        "j-morano/buffer_manager.nvim",
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            {
                '<leader>b',
                function()
                    require("buffer_manager.ui").toggle_quick_menu()
                end,
                desc = "open buffers"
            }
        }
    },
}
