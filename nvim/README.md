### Remove existent conf
```
rm -rf ~/.local/share/nvim/lazy && rm -rf ~/.config/nvim
```

#### [kickstart.nvim docs](https://github.com/nvim-lua/kickstart.nvim)
#### [nvim lua](https://neovim.io/doc/user/lua-guide.html)

## Start installation 
```
mkdir -p ~/.config/nvim && cd ~/.config/nvim && nvim init.lua
```

#### Copy the content of
- https://raw.githubusercontent.com/nvim-lua/kickstart.nvim/master/init.lua
- (or - default copied) https://raw.githubusercontent.com/cjairm/mac_conf/main/kickstart/2023-default-init.lua
- (or - personal) https://raw.githubusercontent.com/cjairm/mac_conf/main/kickstart/2023-personal-init.lua

### some commands
```
<Leader>sf -> Search File
gr -> Search references
<Leader>ds -> Search Symbols inside file
<Leader><space> -> Buffers
<Leader>? -> Recent files

:Telescope keymaps
:Telescope help_tags
:Mason (C-f)

:help lualine.txt
```

---

## (Legacy) [Installation](https://github.com/neovim/neovim/wiki/Installing-Neovim)

Homebrew on macOS or Linux:
```
brew install neovim
```

To update the development version of Nvim:
```
brew upgrade neovim --fetch-HEAD
```

## Requirements to install [LazyVim](https://www.lazyvim.org/)

- Neovim >= 0.8.0 (needs to be built with LuaJIT)
- Git >= 2.19.0 (for partial clones support)
- a Nerd Font(v3.0 or greater) (optional, but needed to display some icons)
- lazygit (optional)
- a C compiler for nvim-treesitter. See here
- for telescope.nvim (optional)
  - live grep: ripgrep
  - find files: fd
- a terminal that support true color and undercurl:
  - kitty (Linux & Macos)
  - wezterm (Linux, Macos & Windows)
  - alacritty (Linux, Macos & Windows)
  - iterm2 (Macos)
 
### Font
[All](https://github.com/ryanoasis/nerd-fonts#patched-fonts) - [official site](https://www.nerdfonts.com/)
  - [Hack nerd font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack#macos)
  
```
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

<img width="946" alt="Screen Shot 2022-08-21 at 1 14 50 AM" src="https://user-images.githubusercontent.com/33442330/185778221-adabf65b-400a-41bd-8414-ce1dddbd9da6.png">

### Extra modules
```
{ import = "lazyvim.plugins.extras.formatting.prettier" },
{ import = "lazyvim.plugins.extras.lang.typescript" },
{ import = "lazyvim.plugins.extras.lang.json" },
{ import = "lazyvim.plugins.extras.lang.go" },
{ import = "lazyvim.plugins.extras.lang.python" },
{ import = "lazyvim.plugins.extras.lang.rust" },
{ import = "lazyvim.plugins.extras.linting.eslint" },
```
### inside `/autocmds.lua`
```
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.cmd.Neotree("close")
  end,
})
```

### under `/plugins` add `gruvbox.lua`
```
return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}

```

### Relevant commands
```
# search
s -> Then type the word you are looking for
<space> -> s -> g/G -> Searches keywords in folder

# others
<space> -> x -> x -> to see errors
<space> -> g -> g/s -> git

# buffers
H -> moves buffer to the left
L -> moves buffer to the right
<space>, -> opens buffer list
<space>bd -> deletes the buffer
<space>bp -> pins the buffer
<space>bP -> deletes the pinned the buffer
```
---

### Legacy
- [Official documentation](https://neovim.io/) and/or [here](https://github.com/neovim/neovim/wiki/Installing-Neovim#macos--os-x)
```
brew install neovim
```
- Where do I put conf file?
Make sure this file exist, if not create it. This file will allow us to share configuration with Vim and Nvim
```
touch ~/.config/nvim/init.vim
chmod +x ~/.config/nvim/init.vim

# Inside of file
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```
- Then we need to create the file where will save the configuration.
```
touch ~/.config/nvim/.nvimrc
chmod +x ~/.config/nvim/.nvimrc

ln -s ~/.config/nvim/.nvimrc .vimrc
```
- [Plugin](https://github.com/junegunn/vim-plug)
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
- [Check configuration file here](https://github.com/cjairm/mac_conf/tree/main/nvim)
- Note. After the configuration make sure you run
```
:PlugInstall
```
- To enable prettier use [this link](https://github.com/neoclide/coc-prettier)
- If problems with FZF check [this](https://www.npmjs.com/package/coc-fzf-preview)
- To configure with git
```
git config --global core.editor "vim"
```
#### Minimap
- [Docs](https://github.com/yavko/minimap.nvim)
You can install code-minimap with Homebrew:
```
brew install code-minimap
```
#### Coc
```
:h coc-completion
:h coc-completion-example
```
#### Notes
```
npm install -g neovim
```

- ADVICE:
  - (tmux 1.9+ only) Set `focus-events` in ~/.tmux.conf:
      set-option -g focus-events on
      
- If needed you may have to go to .config/coc/extension
```
npm i
```
      
#### Conf file
- `nvimconf`
