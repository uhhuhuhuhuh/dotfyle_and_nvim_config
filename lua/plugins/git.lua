return {
    {
        "lewis6991/gitsigns.nvim",
        cmd = "Gitsigns",
        -- event = { 'BufReadPost', 'BufNewFile' },
        config = function()
            require('gitsigns').setup({
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

        keys = {
            {"<leader>x", function() end, desc = "Turn on Gitsigns"}
        }
    },
    {
        "tpope/vim-fugitive",
        cmd = "Git",
    },
}
