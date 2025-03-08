# my neovim config
This is my very minimul config with no ui clutter.\
However it does requires ripgrep(rg) \
(also if you want a solid/opaque background delete line 20 in lua/plugins/eyecandy.lua)

## Installation
### Linux && MacOS
```
git clone https://github.com/uhhuhuhuhuh/neovimConfig ~/.config/nvim
```
### Windows
Use cmd btw
```
git clone https://github.com/uhhuhuhuhuh/neovimConfig "%USERPROFILE%\AppData\Local\nvim"
```

## List of my plugins
<sub><sup>pst I just copied and pasted their about section</sub></sup>
Plugin Manager:
lazy.nvim (lazy.nvim is a modern plugin manager for Neovim)
```
Comment.nvim (Smart and powerful comment plugin for neovim)
Luasnip (Snippet Engine for Neovim written in Lua)
blink.cmp (Performant, batteries-included completion plugin for Neovim )
everforest (🌲 Comfortable & Pleasant Color Scheme for Vim)
friendly-snippets (Set of preconfigured snippets for different languages)
none-ls (Use Neovim as a language server to inject LSP diagnostics, code actions, and more)
nvim-autopairs (autopairs for neovim written in lua)
nvim-lspconfig (Quickstart configs for Nvim LSP)
nvim-tree.lua (A File Explorer For Neovim Written In Lua)
nvim-treesitter (Nvim Treesitter configurations and abstraction layer)
nvim-web-devicons (Provides Nerd Font icons [glyphs] for use by neovim plugins)
plenary.nvim (All the lua functions I don't want to write twice) basiaclly a neovim library
telescope.nvim (Find, Filter, Preview, Pick. All lua, all the time)
todo-comments.nvim (✅ Highlight, list and search todo comments in your projects)
trouble.nvim (🚦pretty diagnostics, quickfix and location list to help you solve all the trouble)
undotree (The undo history visualizer for VIM)
vim-fugitive (A Git wrapper so awesome, it should be illegal)
```
## Some useful to know keymappings
```
<leader>f = Searches files
<leader>b = Searches buffers
<leader>g = Grep/find text
<leader>y = Copy to clipboard
<C-p> = Paste from system clipboard
<leader>s = Makes the diagnostics message under your mouse turn into a floating window
```
### Extra Plugins(not installed by default/commented out)
```
dashboard-nvim (Fancy and Blazing Fast start screen plugin of neovim)
nvim-notify (A fancy, configurable, notification manager for NeoVim)
```
