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


        dependecies = {
            "L3MON4D3/LuaSnip",
        },

        opts = {
            completion = {
                list = {
                    max_items = 10,
                },

                ghost_text = {
                    enabled = false
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
        },
    },

}
