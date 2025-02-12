# my neovim config
This is my very minimul config with no ui clutter.\
However it does requires ripgrep(rg) \
(also if you want a solid/opaque background delete lines 25-28 in lua/plugins/eyecandy.lua)

## Installation
Use powershell if you are using windows
```
git clone https://github.com/uhhuhuhuhuh/neovimConfig ~/.config/nvim
# use %userprofile%\AppData\Local\nvim instead of ~/.config/nvim if you use windows
rm ~/.config/nvim/lazy-lock.json
# use %userprofile%\AppData\Local\nvim\lazy-lock.json instead if you use windows
nvim # load it up and have fun :)
```

## List of my plugins
I just copied and pasted their about section
```
lazy.nvim (lazy.nvim is a modern plugin manager for Neovim)
everforest (🌲 Comfortable & Pleasant Color Scheme for Vim)
none-ls (Use Neovim as a language server to inject LSP diagnostics, code actions, and more)
nvim-lspconfig (Quickstart configs for Nvim LSP )
nvim-treesitter (Nvim Treesitter configurations and abstraction layer)
blink.cmp (Performant, batteries-included completion plugin for Neovim )
Luasnip (Snippet Engine for Neovim written in Lua)
friendly-snippets (Set of preconfigured snippets for different languages)
telescope.nvim (fzf.vim [wrapper of fzf for vim] written in lua)
mini.pairs (Neovim Lua plugin to automatically manage character pairs)
Comment.nvim (Smart and powerful comment plugin for neovim)
vim-fugitive (A Git wrapper so awesome, it should be illegal )
gitsigns.nvim (Git integration for buffers )
undotree (The undo history visualizer for VIM)
nvim-web-devicons (Provides Nerd Font icons [glyphs] for use by neovim plugins)
aerial.nvim (A code outline window for skimming and quick navigation)
mini.splitjoin (Neovim Lua plugin to split and join arguments)
plenary.nvim (All the lua functions I don't want to write twice) basiaclly a neovim library
```
## Some useful to know keymappings
```
<leader>f = Searches files
<leader>b = Searches buffers
<leader>g = grep/find text
<leader>y = Copy to clipboard
<C-p> = Paste from system clipboard
<leader>s = Makes the diagnostics message under your mouse turn into a floating window
```
### Extra Plugins(not installed by default/commented out)
```
dashboard-nvim (Fancy and Blazing Fast start screen plugin of neovim)
nvim-tree.lua (A File Explorer For Neovim Written In Lua)
toggleterm.nvim (A neovim plugin to persist and toggle multiple terminals)
nvim-notify (A fancy, configurable, notification manager for NeoVim)
```
