return {
    {
        "ibhagwan/fzf-lua",
        dependencies = { "echasnovski/mini.icons", "nvim-treesitter/nvim-treesitter" },

        config = function()
            require("fzf-lua").setup()
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
                "<leader>b",
                function()
                    require("fzf-lua").buffers()
                end,
                desc = "Open buffers",
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
        version = '*',
        config = function()
            require('mini.splitjoin').setup({
                mappings = {
                    toggle = 'gs',
                }
            })
        end,

        keys = {
            { "gs", mode = { 'n', 'x' } }
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
