return {
    {
        "L3MON4D3/LuaSnip",
        lazy = true,
        dependencies = { "rafamadriz/friendly-snippets" },
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
                },

                keymap = {
                    preset = 'default',

                    ["<C-L>"] = { "snippet_forward", "fallback" },
                    ["<C-H>"] = { "snippet_backward", "fallback" },
                    ["<C-J>"] = { "select_next", "fallback" },
                    ['<C-K>'] = { "select_prev", "fallback" },
                    ['<C-C>'] = { "cancel", "fallback" },
                    ['<C-Y>'] = { 'select_and_accept', 'fallback' },
                },


                snippets = { preset = 'luasnip' },

                -- remove completions for cmdline
                cmdline = { sources = {} },

                sources = {
                    default = { 'lsp', 'path', 'snippets', 'buffer' },
                },
            })
        end,
    },
}
