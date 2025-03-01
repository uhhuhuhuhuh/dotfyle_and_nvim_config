vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"

vim.opt.scrolloff = 8

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

vim.opt.foldminlines = 150
vim.opt.foldnestmax = 3

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN]  = "",
            [vim.diagnostic.severity.INFO]  = "",
            [vim.diagnostic.severity.HINT]  = "󰰄",
        },
    },
    float = {
        header = false,
        border = 'rounded',
        focusable = true,
    },
})

--undo

if vim.loop.os_uname().sysname ~= "Windows_NT" then
    vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
else
    vim.opt.undodir = os.getenv("USERPROFILE") .. "/.nvim/undodir"
end
vim.opt.undofile = true
