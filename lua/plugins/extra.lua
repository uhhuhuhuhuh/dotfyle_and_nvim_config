return {
    --[[     {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require("dashboard").setup({
                theme = "doom",
                config = {
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

                                require("telescope.builtin").find_files()
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
                            action = "qa",
                        },
                    },
                    footer = {}
                }
            })
        end
    },  ]]
    --[[ {
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                background_colour = "#000000",
            })
            vim.notify = require('notify')
        end
    }, ]]
    --[[     {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup()
        end,

        keys = {
            { "<leader>n", ":NvimTreeToggle<cr>", desc = "Toggles nvim-tree" },
        },
    }, ]]
    --[[     {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },

        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    theme = 'auto',
                    component_separators = '|',
                    section_separators = { left = '', right = '' },
                    disabled_filetypes = {
                        statusline = {},
                        winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    always_show_tabline = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 100,
                        tabline = 100,
                        winbar = 100,
                    }
                },
                sections = {
                    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
                    lualine_b = { 'branch', 'diff' },
                    lualine_c = { 'diagnostics' },
                    lualine_x = { 'filetype' },
                    lualine_y = { 'filename' },
                    lualine_z = { { 'progress', separator = { right = '' }, left_padding = 2 }, },
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = { 'filename' },
                    lualine_x = { 'location' },
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {}
            })
        end,
    }, ]]
    --[[ {
        "lewis6991/gitsigns.nvim",
        event = { 'BufReadPost', 'BufNewFile' },
        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "▎" },
                    change = { text = "▎" },
                    delete = { text = "" },
                    topdelete = { text = "" },
                    changedelete = { text = "▎" },
                    untracked = { text = "▎" },
                },
                signs_staged = {
                    add = { text = "▎" },
                    change = { text = "▎" },
                    delete = { text = "" },
                    topdelete = { text = "" },
                    changedelete = { text = "▎" },
                },
            })
        end,
    }, ]]
}
