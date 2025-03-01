vim.keymap.set('n', '<leader>s', vim.diagnostic.open_float, { desc = "Float message" })
vim.keymap.set('n', "<S-c>", vim.diagnostic.setloclist, { desc = "Show diagnostics in quickfix list" })

--make them not copy
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d', { desc = "No yank delete" })
vim.keymap.set({ 'n', 'v' }, '<leader>c', '"_c', { desc = "No yank change" })
vim.keymap.set('n', 'x', '"_x', { desc = "No yank x" })
vim.keymap.set('n', '<del>', '"_x', { desc = "No yank delete key" })
vim.keymap.set('v', '<leader><del>', '"_<del>', { desc = "No yank delete key(visual)" })
vim.keymap.set('x', '<leader>p', '"_dP', { desc = "No yank paste" })

--clipboard stuff
vim.keymap.set({ 'n', 'v' }, '<leader>y', "\"+y", { desc = "Yank to clipboard" })
vim.keymap.set({ 'n', 'v' }, '<C-p>', "\"+p", { desc = "Paste from clipboard" })
vim.keymap.set('x', '<leader><C-p>', "\"_d\"+p", { desc = "Paste from clipboard, and no copy" })

vim.keymap.set('n', '<cr>', 'o<esc>', { desc = "Makes new line but stays in normal mode" })
vim.keymap.set('n', '<S-s>', 'i<cr><esc>', { desc = "Makes new line at cursor" })
vim.keymap.set('n', '<S-d>', 'O<esc>', { desc = "Makes new line above current line" })

vim.keymap.set('n', '<S-j>', ':m +1<cr>', { desc = "Moves line down" })
vim.keymap.set('n', '<S-k>', ':m -2<cr>', { desc = "Moves line up" })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = "Centers CTRL-D" })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = "Centers CTRL-U" })

vim.keymap.set("n", "<leader>e", ":e .<cr>", { desc = "netrw" })

vim.keymap.set("n", "<leader>l", function()
    if vim.diagnostic.config().virtual_text then
        vim.diagnostic.config({
            virtual_text = false,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN]  = "",
                    [vim.diagnostic.severity.INFO]  = "",
                    [vim.diagnostic.severity.HINT]  = "",
                },
                numhl = {
                    [vim.diagnostic.severity.WARN] = 'WarningMsg',
                    [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
                    [vim.diagnostic.severity.INFO] = 'DiagnosticInfo',
                    [vim.diagnostic.severity.HINT] = 'DiagnosticHint',
                },
            },
        })
    else
        vim.diagnostic.config({
            virtual_text = true,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN]  = "",
                    [vim.diagnostic.severity.INFO]  = "",
                    [vim.diagnostic.severity.HINT]  = "󰰄",
                },
            },
        })
    end
end, { desc = "Toggle diagnostic messages" })
