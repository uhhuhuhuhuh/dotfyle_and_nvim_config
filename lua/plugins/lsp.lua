return {
    {
        "nvimtools/none-ls.nvim",
        event = { 'BufReadPost', 'BufNewFile' },
        dependencies = { "neovim/nvim-lspconfig" },
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                source = {
                    null_ls.builtins.formatting.stylua,
                }
            })
            vim.keymap.set('n', '<C-f>', vim.lsp.buf.format, { desc = "Formats code" })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        event = "BufEnter",
        dependencies = { 'saghen/blink.cmp' },
        opts = {
            diagnostics = {
                signs = false,
            },
        },

        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            lspconfig["lua_ls"].setup({ capabilities = capabilities })
            lspconfig["clangd"].setup({ capabilities = capabilities })
            lspconfig["gopls"].setup({ capabilities = capabilities })
            lspconfig["rust_analyzer"].setup({ capabilities = capabilities, })
            lspconfig["jdtls"].setup({ capabilities = capabilities, })

            vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<C-f>', vim.lsp.buf.format, {})
            vim.keymap.set('n', '<leader>D', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', "<leader>r", vim.lsp.buf.rename, {})
        end,
    }
}
