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
        keys = {
            {
                "<leader>ff",
                function()
                    if SETUP_FZF == nil then
                        require("fzf-lua").setup {
                            winopts = {
                                fullscreen = true,
                            }
                        }

                        SETUP_FZF = true
                    end

                    require("fzf-lua").files()
                end,
                desc = "Find Files"
            },
            {
                "<leader>b",
                function()
                    if SETUP_FZF == nil then
                        require("fzf-lua").setup {
                            winopts = {
                                fullscreen = true,
                            }
                        }

                        SETUP_FZF = true
                    end

                    require("fzf-lua").buffers()
                end,
                desc = "Find Buffers"
            },
            {
                "<leader>g",
                function()
                    if SETUP_FZF == nil then
                        require("fzf-lua").setup {
                            winopts = {
                                fullscreen = true,
                            }
                        }

                        SETUP_FZF = true
                    end

                    require("fzf-lua").grep()
                end,
                desc = "Grep Text",
            },
            {
                "<leader>fd",
                function()
                    if SETUP_FZF == nil then
                        require("fzf-lua").setup {
                            winopts = {
                                fullscreen = true,
                            }
                        }

                        SETUP_FZF = true
                    end

                    require("fzf-lua").lsp_document_diagnostics()
                end,
                desc = "File Diagnostics"
            },
            {
                "<leader>fD",
                function()
                    if SETUP_FZF == nil then
                        require("fzf-lua").setup {
                            winopts = {
                                fullscreen = true,
                            }
                        }

                        SETUP_FZF = true
                    end

                    require("fzf-lua").lsp_workspace_diagnostics()
                end,
                desc = "Directory Diagnostics"
            },
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
    --might be usefull for bigger projects, but to I don't need to use it rn
    --[[ 	{
		'stevearc/aerial.nvim',
		event = { 'BufReadPost', 'BufNewFile' },

		-- Optional dependencies
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons"
		},

		config = function()
			require("aerial").setup({
				on_attach = function(bufnr)
					vim.keymap.set("n", "}", "<cmd>AerialPrev<CR>", { buffer = bufnr })
					vim.keymap.set("n", "{", "<cmd>AerialNext<CR>", { buffer = bufnr })
				end,
			})
			vim.keymap.set('n', '<leader>a', ":AerialToggle<cr>", { desc = "Toggle Aerial" })
		end,
	}, ]]
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
}
