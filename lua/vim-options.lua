vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true


vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = "100"

vim.opt.scrolloff = 8

vim.g.mapleader = ' '

--lsp_lines replaces them
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN]  = "",
            [vim.diagnostic.severity.INFO]  = "",
            [vim.diagnostic.severity.HINT]  = "",
        },
    },
})

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
vim.keymap.set('n', '<C-p>', "\"+p", { desc = "Paste from clipboard" })
vim.keymap.set('x', '<leader><C-p>', "\"_d\"+p", { desc = "Paste from clipboard, and no copy" })

vim.keymap.set('n', 'e', '>>', { desc = "Tabs the selected line" })
vim.keymap.set('n', '<S-e>', '<<', { desc = "Tabs backwards the selected line" })
vim.keymap.set('v', 'e', '>', { desc = "Tabs the selected line" })
vim.keymap.set('v', '<S-e>', '<', { desc = "Tabs backwards the selected line" })

vim.keymap.set('n', '<s-cr>', 'o<esc>', { desc = "Makes new line" })

vim.keymap.set('n', '<S-s>', 'i<cr><esc>', { desc = "Makes new line at cursor" })
vim.keymap.set('n', '<S-d>', 'O<esc>', { desc = "Makes new line above current line" })

vim.keymap.set('n', '<S-j>', ':m +1<cr>', { desc = "Moves line down" })
vim.keymap.set('n', '<S-k>', ':m -2<cr>', { desc = "Moves line up" })

vim.keymap.set('n', '<A-j>', '<C-w>j', { desc = "Moves to down pane" })
vim.keymap.set('i', '<A-j>', '<esc><C-w>j', { desc = "Moves to down pane(insert)" })
vim.keymap.set('n', '<A-k>', '<C-w>k', { desc = "Moves to up pane" })
vim.keymap.set('i', '<A-k>', '<esc><C-w>k', { desc = "Moves to up pane(insert)" })
vim.keymap.set('n', '<A-h>', '<C-w>h', { desc = "Moves to left pane" })
vim.keymap.set('i', '<A-h>', '<esc><C-w>h', { desc = "Moves to left pane(insert)" })
vim.keymap.set('n', '<A-l>', '<C-w>l', { desc = "Moves to right pane" })
vim.keymap.set('i', '<A-l>', '<esc><C-w>l', { desc = "Moves to right pane(insert)" })

vim.keymap.set('n', '<leader>fr', ':%s///g<left><left><left>', { desc = "Find and replace" })

vim.keymap.set('n', '<leader>e', ':e .<cr>', { desc = "Open netrw" })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = "Centers CTRL-D" })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = "Centers CTRL-U" })

--undo
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true
