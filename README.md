# my neovim config
This is my very minimul and optimized config with no ui clutter.\

![image](https://github.com/uhhuhuhuhuh/dotfyle_and_nvim_config/blob/master/neovim_screenshot.png)

## Features
* Completion support
* Easy commenting
* Fuzzy finding
* Git intergration
* LSP intergration
* Language support
 
btw comment lines 23-26 in lua/plugins/eyecandy.lua to have a solid background

## Installation
### Dependencies

#### Needed
* Neovim >= 0.9.0 version, should be obvious why we need this
* Git >= 2.19.0 version, for cloning repo

#### Optional
* A Nerd Font, for symbols
* Ripgrep, for search through text

### Linux && MacOS
```
git clone https://github.com/uhhuhuhuhuh/neovimConfig ~/.config/nvim
rm -rf ~/.config/nvim/.git
```
### Windows (cmd.exe)
```
git clone https://github.com/uhhuhuhuhuh/neovimConfig "%USERPROFILE%\AppData\Local\nvim"
rmdir /S %USERPROFILE%\AppData\Local\nvim\.git
```


## Plugins

### Plugin Manager
*   [lazy.nvim](https://github.com/folke/lazy.nvim) (💤 A modern plugin manager)
   
### Look
*   [everforest](https://github.com/sainnhe/everforest) (🌲 Comfortable & Pleasant Color Scheme)
*   [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) (Provides Nerd Font icons for use by neovim plugins)
*   [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (Nvim Treesitter configurations and abstraction layer)

### LSP and Completions
*   [none-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) (Inject LSP diagnostics, code actions, and more)
*   [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (Quickstart configs for Nvim LSP)
*   [blink.cmp](https://github.com/Saghen/blink.cmp) (Performant,batteries-included completion plugin)
*   [LuaSnip](https://github.com/L3MON4D3/LuaSnip) (Snippet Engine for Neovim written in Lua)
*   [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) (preconfigured snippets for different languages)

### Editing Support

#### Generic Support

*   [nvim-autopairs](https://github.com/windwp/nvim-autopairs) (autopairs for neovim written in lua)

#### Commenting

*   [Comment.nvim](https://github.com/numToStr/Comment.nvim) (🧠 💪 // Smart and powerful comment plugin)
*   [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) (✅ Highlight, list and search todo comments)


### Tools

*   [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (Find, Filter, Preview, Pick. All lua, all the time)

*   [trouble.nvim](https://github.com/folke/trouble.nvim) (🚦 A pretty diagnostics, references, quickfix, and more to help you solve all the trouble your code is causing)

*   [undotree](https://github.com/mbbill/undotree) (The undo history visualizer for VIM)
   
### Git

*   [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) (Git integration for buffers)

*   [vim-fugitive](https://github.com/tpope/vim-fugitive) (A Git wrapper so awesome, it should be illegal)

## Some useful to know keymappings
```
<leader>f = Searches files
<leader>b = Searches buffers
<leader>g = Grep/find text
<leader>y = Copy to clipboard
<C-p> = Paste from system clipboard
<leader>s = Makes the diagnostics message under your mouse turn into a floating window
```
### All keymappings(that aren't basic overides)
mapping, mode(s), description
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

<leader>k, normal mode, show documentation for token under cursor
<C-f>, normal mode, formats your code
<leader>d, normal mode, goto definition
<leader>ca, normal mode, perform code action/quick fix
<leader>r, normal mode, Rename things: variables, classes, structs, functions, etc
```
