return {
    --[[
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require("dashboard").setup({
                theme = "doom",
                config = {
                    -- trust me this looks good
                    header = {
                        "",
                        "",
                        "      ___           ___           ___                                      ___     ",
                        "     /  /\\         /  /\\         /  /\\          ___            ___        /  /\\    ",
                        "    /  /::|       /  /::\\       /  /::\\        /  /\\          /__/\\      /  /::|   ",
                        "   /  /:|:|      /  /:/\\:\\     /  /:/\\:\\      /  /:/          \\__\\:\\    /  /:|:|   ",
                        "  /  /:/|:|__   /  /::\\ \\:\\   /  /:/  \\:\\    /  /:/           /  /::\\  /  /:/|:|__ ",
                        " /__/:/ |:| /\\ /__/:/\\:\\ \\:\\ /__/:/ \\__\\:\\  /__/:/  ___    __/  /:/\\/ /__/:/_|::::\\",
                        " \\__\\/  |:|/:/ \\  \\:\\ \\:\\_\\/ \\  \\:\\ /  /:/  |  |:| /  /\\  /__/\\/:/~~  \\__\\/  /~~/:/",
                        "     |  |:/:/   \\  \\:\\ \\:\\    \\  \\:\\  /:/   |  |:|/  /:/  \\  \\::/           /  /:/ ",
                        "     |__|::/     \\  \\:\\_\\/     \\  \\:\\/:/    |__|:|__/:/    \\  \\:\\          /  /:/  ",
                        "     /__/:/       \\  \\:\\        \\  \\::/      \\__\\::::/      \\__\\/         /__/:/   ",
                        "     \\__\\/         \\__\\/         \\__\\/           ~~~~                     \\__\\/    ",
                        "",
                        "",
                        "",
                        "",
                        "",
                    },
                    center = {
                        {
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Find File',
                            desc_hl = 'String',
                            key = 'f',
                            keymap = '<leader>f',
                            key_hl = 'Number',
                            action = function()
                                require("fzf-lua").setup({ "ivy" })
                                require("fzf-lua").files({ previewer = false })
                            end
                        },
                        {
                            icon = '󰎐 ',
                            icon_hl = 'Title',
                            desc = 'Navigate/File System',
                            desc_hl = "String",
                            key = 'n',
                            key_hl = "Number",
                            action = "e .",
                        },
                        {
                            icon = " ",
                            icon_hl = 'Title',
                            desc = 'Configuration',
                            desc_hl = 'String',
                            key = 'c',
                            key_hl = 'Number',
                            action = function()
                                local dir_sep = package.config:sub(1, 1)
                                if dir_sep == "\\" then
                                    vim.cmd("e ~\\AppData\\Local\\nvim")
                                else
                                    vim.cmd("e ~/.config/nvim")
                                end
                            end
                        },
                        {
                            icon = "󰒲 ",
                            icon_hl = "Title",
                            desc = "Lazy.nvim(Plugin Manager)",
                            desc_hl = "String",
                            key = 'l',
                            key_hl = 'Number',
                            action = "Lazy",
                        },
                        {
                            icon = "󰩈 ",
                            icon_hl = "Title",
                            desc = "Exit/Quit",
                            desc_hl = "String",
                            key = 'q',
                            key_hl = "Number",
                            action = ":qa",
                        },
                    },
                    footer = {}
                }
            })
        end
    },
    ]]
    --[[
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup()
        end,

        keys = {
            { "<leader>t", ":NvimTreeToggle<cr>", desc = "Toggles nvim-tree" },
        },
    },
    ]]
    --[[
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
    ]]
    --[[
    {
        "akinsho/toggleterm.nvim",
        cmd = "ToggleTerm",
        version = '*',

        config = function()
            require('toggleterm').setup()
        end,
        keys = {
            { "<C-\\>",         ":ToggleTerm<cr>",                            desc = "Toggle Term" },
            { "<leader><C-\\>", ":ToggleTerm size=55 direction=vertical<cr>", desc = "Toggle Term vertical" }
        }
    },
    ]]
    --[[
    {
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                background_colour = "#000000",
            })
            vim.notify = require('notify')
        end
    },
    ]]
}
