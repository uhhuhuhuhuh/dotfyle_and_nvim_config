return {
    --[[
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
    ]]
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
                            keymap = '<leader>ff',
                            key_hl = 'Number',
                            action = function()
                                require("mini.pick").setup({
                                    mappings = {
                                    move_down = "<C-j>",
                                    move_up = "<c-k>",
                                }
                                })
                                vim.cmd("Pick files")
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
}
