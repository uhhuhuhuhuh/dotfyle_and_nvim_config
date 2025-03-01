return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = "BufEnter",
        build = ":TSUpdate",

        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })

            -- stop tressiter from folding namespaces
            -- add (namespace_definition) in the @fold block if you want namespaces to be folded
            vim.treesitter.query.set("cpp", "folds", [[
            [
                (for_range_loop)
                (class_specifier)
                (field_declaration
                    type: (enum_specifier)
                    default_value: (initializer_list))
                (template_declaration)
                (try_statement)
                (catch_clause)
                (lambda_expression)
                (for_statement)
                (if_statement)
                (while_statement)
                (do_statement)
                (switch_statement)
                (case_statement)
                (function_definition)
                (struct_specifier)
                (enum_specifier)
                (comment)
                (preproc_if)
                (preproc_elif)
                (preproc_else)
                (preproc_ifdef)
                (preproc_function_def)
                (initializer_list)
                (gnu_asm_expression)
                (preproc_include)+
            ]@fold

            (compound_statement
                (compound_statement) @fold)
            ]])
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },

        config = function()
            require("lualine").setup({
                options = {
                    component_separators = '|',
                    section_separators = { left = '', right = '' },
                },
                sections = {
                    lualine_a = { {'mode', separator = { left = '' }, right_padding = 2 } },
                    lualine_b = { 'branch', 'diff', },
                    lualine_c = { 'diagnostics' },
                    lualine_x = { 'filetype' },
                    lualine_y = { 'filename' },
                    lualine_z = { {'location', separator = { right = '' }, left_padding = 2 } }
                },
            })
        end
    },
    {
        "sainnhe/everforest",
        config = function()
            vim.cmd.colorscheme("everforest")
        end,
    },
}
