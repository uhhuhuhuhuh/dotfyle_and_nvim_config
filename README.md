# my neovim config
This is my very minimul and optimized config with no ui clutter.\
optional dependencies: ripgrep, lazygit

![image](https://github.com/uhhuhuhuhuh/dotfyle_and_nvim_config/blob/master/neovim_screenshot.png)

## Installation
### Linux && MacOS
```
git clone https://github.com/uhhuhuhuhuh/neovimConfig ~/.config/nvim
rm -rf ~/.config/nvim/.git
```
### Windows
Use cmd btw
```
git clone https://github.com/uhhuhuhuhuh/neovimConfig "%USERPROFILE%\AppData\Local\nvim"
rmdir /S %USERPROFILE%\AppData\Local\nvim\.git
```

## Features
```
Completion support
Easy commenting
Fuzzy finding
Git commands
LSP intergration
Language snippets
Lazygit intergration
Syntax highlighting
```

## List of my plugins
<sub><sup>pst I just copied and pasted their about section</sub></sup> \
Plugin Manager = lazy.nvim (lazy.nvim is a modern plugin manager for Neovim)
Total of 17 plugins(not including plugin manager)
```
Comment.nvim (Smart and powerful comment plugin for neovim)
Luasnip (Snippet Engine for Neovim written in Lua)
blink.cmp (Performant, batteries-included completion plugin for Neovim )
everforest (🌲 Comfortable & Pleasant Color Scheme for Vim)
friendly-snippets (Set of preconfigured snippets for different languages)
lazygit.nvim (Plugin for calling lazygit from within neovim)
none-ls (Use Neovim as a language server to inject LSP diagnostics, code actions, and more)
nvim-autopairs (autopairs for neovim written in lua)
nvim-lspconfig (Quickstart configs for Nvim LSP)
nvim-treesitter (Nvim Treesitter configurations and abstraction layer)
nvim-web-devicons (Provides Nerd Font icons for use by neovim plugins)
plenary.nvim (All the lua functions I don't want to write twice) basically a neovim library
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
gitsigns.nvim (Git integration for buffers)
lualine.nvim (A blazing fast and easy to configure neovim statusline plugin)
nvim-notify (A fancy, configurable, notification manager for NeoVim)
nvim-tree.lua (A File Explorer For Neovim Written In Lua)
```
Extra Colorschemes:
```
ashen.nvim (A warm, muted colorscheme with red, orange, and lots of grayscale)
catppuccin (🍨 Soothing pastel theme)
nordic.nvim (🌒 Nord for Neovim, but warmer and darker)
onedark.nvim (One dark colorscheme for neovim based on Atom's One Dark)
tokyonight.nvim (🏙 A clean, dark Neovim theme written in Lua)
```
### All keymappings(that aren't basic overides)
format = mapping, mode(s), description

also leader == space \
keymappings:
```
<leader>s, normal mode, float diagnostic message

<leader>d, normal visual select modes, No yank delete
<leader>c, normal visual select modes, No yank change

<leader>y, normal visual modes, Yank to clipboard
<C-p>, normal visual modes, Paste from clipboard

<Enter>, normal mode, Make new line but stay in normal mode
<S-s>, normal mode, Makes new line at cursor
<S-d>, normal, Make new line above current line

<S-k>, normal mode, Moves line up
<S-j>, normal mode, Moves line down

<leader>e, normal mode, opens netrw

<leader>l, normal mode, toggles diagnostic messages

<C-L>, insert select modes, Snippet forward
<C-H>, insert select modes, Snippet backwads
<C-J>, insert mode, Selects next item for completion
<C-K>, insert mode, Selects previous item for completion
<C-C>, insert mode, Cancels completion
<C-Y>, insert mode, Accepts completion

<esc>, insert mode telescope, Closes telescope
<C-J>, insert mode telescope, Select next item telescope
<C-K>, insert mode telescope, Select previous item telescope

<leader>f, normal mode, find files
<leader>b, normal mode, find buffers
<leader>g, normal mode, find text in directory

<leader>y, normal mode, open undotree

gcc, normal mode, comment current line using line comment
gc, visual mode, comment block of text using line comments
gbc, normal mode, comment current line using block comment
gb, visual mode, comment block of text using block comment

<leader>w, normal mode, show diagnostics for all opened files
<leader><S-w>, normal mode, show diagnostics for current file

<leader>t, normal mode, show all todo comments

<leader>lg, normal mode, open lazygit

<leader>k, normal mode, show documentation for token under cursor
<C-f>, normal mode, formats your code
<leader>d, normal mode, goto definition
<leader>ca, normal mode, perform code action/quick fix
<leader>r, normal mode, Rename things: variables, classes, structs, functions, etc
```
