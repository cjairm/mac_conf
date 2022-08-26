# Productivity Configuration for Mac

## Install Homebrew
[Homebrew](https://brew.sh/) is the missing package manager for macOS (or Linux) and makes installing packages super easy.

## Install iTerm2
Replace the default Terminal.app in macOS by [iTerm2](https://iterm2.com/).

<img width="783" alt="Screen Shot 2022-08-21 at 1 18 43 AM" src="https://user-images.githubusercontent.com/33442330/185778315-d562c8a7-db16-4f0e-9cce-3428f4327482.png">

## ZSH and Oh My ZSH
Since macOS Catalina (10.15.2) the default shell is now ZSH instead of Bash. We can enrich ZSH by using the [Oh My ZSH](https://ohmyz.sh/) framework which provides some functionality that will boost our productivity.

- Autocompletion by pressing `Tab` key which allows selecting available directories, commands and files.
- Use alias commands, you can get a list of all available `alias` by running alias in your terminal.
- ou can omit the cd (change directory) command: `..` (instead of `cd ..`), `../..` (instead of `cd ../..`) `/` (for root directory) and `~` (for home directory).
- `take` command creates a new directory and changes the path to it. Example: `take testFolder` is the same as `mkdir testFolder && cd testFolder`.
- Use `-` to quickly navigate between your last and current path.
- Many cool themes.
- A list of amazing plugins.
- Git integration.
- Etc...

`Oh My ZSH` can be configured via the `.zshrc` configuration file ([using current aliases and nvim](https://github.com/cjairm/mac_conf/blob/main/.zshrc#L132-L137))

#### Conf files
- `zshconf`
- `ohmyzshconf`

## Themes terminals
1. [Color themes for default macOS Terminal.app](https://github.com/lysyi3m/macos-terminal-themes)
2. [Spaceship ZSH](https://github.com/spaceship-prompt/spaceship-prompt)
3. [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

## Ripgrep

### Installation
- [Official docs](https://github.com/BurntSushi/ripgrep)

## Yabai

### Installation
- [MacOS window manager](https://github.com/koekeishiya/yabai)
```
brew install koekeishiya/formulae/yabai
```
- [Simple hotkey daemon for macOS](https://github.com/koekeishiya/skhd)
```
brew install koekeishiya/formulae/skhd
```
- Where to put the config file?
```
touch ~/.config/yabai/yabairc
chmod +x ~/.config/yabai/yabairc
```
- [Check configuration file here](https://github.com/cjairm/mac_conf/blob/main/yabairc)

#### Conf file
- `yabaiconf`

## skhd
- Where to put the config file?
```
touch ~/.config/skhd/skhdrc
chmod +x ~/.config/skhd/skhdrc
```
- [Check configuration file here](https://github.com/cjairm/mac_conf/blob/main/skhdrc)

### Additional Mac System Settings

- Navigate to `System Preferences > Accessibility > Display` and make sure "Reduce Motion" is `selected`.

![Screen Shot 2022-08-17 at 8 09 25 PM](https://user-images.githubusercontent.com/33442330/185270273-9d660456-8e58-436f-8823-0e1824a9e502.png)

- Configure "Mission Control" Settings for Yabai. Go to `System Preferences > Mission Control`
  - In the Mission Control preferences pane in System Preferences, the setting "Displays have separate Spaces" must be `enabled`.
  - In the Mission Control preferences pane in System Preferences, the setting "Automatically rearrange Spaces based on most recent use" should be `disabled` for commands that rely on the ordering of spaces to work reliably.

![Screen Shot 2022-08-17 at 8 15 34 PM](https://user-images.githubusercontent.com/33442330/185271018-5e83d116-8cb5-4ab4-959d-9b1fb903595d.png)

```
--------------------------------------
# Will automatically start Yabai when computer starts
brew services start yabai

# Will automatically start skhd when computer starts
brew services start skhd
--------------------------------------
```

#### Conf file
- `skhdrcconf`

## Mission control
<img width="403" alt="Screen Shot 2022-08-21 at 1 27 44 AM" src="https://user-images.githubusercontent.com/33442330/185778602-dbab1f1f-8e89-4127-acba-8fdef22239e3.png">
<img width="404" alt="Screen Shot 2022-08-21 at 1 27 58 AM" src="https://user-images.githubusercontent.com/33442330/185778603-16b14e47-7523-4d59-9783-7a23255da2e3.png">


## Tmux

With tmux, you can create multiple sessions which are totally independent from your terminal. That’s why it’s called a terminal multiplexer. If you already know GNU screen (another terminal multiplexer), tmux is similar but more powerful, and easier to config.

#### Protection Against Terminal Crashes
Since your tmux session is independent from your terminal, you don’t need to worry anymore if you close it or even if it crashes. You can always reattach your session afterward without any problem.

#### Saving tmux Sessions
It’s possible to save tmux sessions in a file and reopen them later, even after switching off your computer.

#### Remote Pair Programming
A tmux session can be attached to many clients (terminals), even via SSH. It means that you can do pair programming with another developer using tmux and Vim, by sharing the same session.

### Installation

- [Official docs](https://github.com/tmux/tmux/wiki)

```
brew install tmux
```
- Where to put the config file?
```
touch ~/.tmux.conf
chmod +x ~/.tmux.conf
```
- [Check configuration file here](https://github.com/cjairm/mac_conf/blob/main/.tmux.conf)
- General Organization

![Screen Shot 2022-08-17 at 8 36 37 PM](https://user-images.githubusercontent.com/33442330/185273021-b07c206d-e9a0-4ab7-b599-7c061565e755.png)

#### The tmux Server
The tmux server manage every single tmux session. If you kill it, you kill every session too. To do so, you can run the command `tmux kill-server`.

#### Sessions
We’ve seen what are tmux sessions above. You can detach them from a client (and let them run in the background), and attach them back.

#### Windows
A tmux window represent an entire screen. You can have multiple windows open in one session. These windows are represented by tabs in the tmux status bar, at the bottom. To switch from one window to another, you can use some keystrokes or even your mouse. More on that below.

#### Panes
You can split your windows in panes to have multiple shell on one screen. It’s really practical, I love it.

### General usage

- Managing tmux Sessions
  - `tmux list-sessions` - List tmux sessions
  - `tmux new-session -s hello` - Create a new session named “hello”
  - `tmux kill-session -t hello` - Kill the session named “hello”
  - `tmux kill-server` - Kill the tmux server and, as a result, every session

### Shortcuts
```
alias tml="tmux list-sessions"
alias tmn="tmux new-session -s"
alias tmk="tmux kill-session -t"
alias tms="tmux switch-client -t"
alias tma="tmux attach-session"
alias tmd="tmux detach"
alias tmkall="tmux kill-server"
```
#### Create new pane
```
Cntrl-Space v -> split vertically
Cntrl-Space h -> split horizontally
```
#### Move from pane to pane
```
Cntrl-h -> Left
Cntrl-j -> Down
Cntrl-k -> Up
Cntrl-l -> Right
```
#### Windows
```
Cntrl-Space + n -> Rename window
Cntrl-Space + w -> Create new
```
#### Copy mode
```
Cntrl-Space + [
```
#### Move window to window
```
Cntrl-u -> Prev window
Cntrl-o -> Next window
```
#### Choose tree
```
Cntrl-t
```
#### Clock
```
Cntrl-Space + t
```

#### Conf file
- `tmuxconf`

## NVIM

### Installation
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
#### Font
[All](https://github.com/ryanoasis/nerd-fonts#patched-fonts)
  - [Hack nerd font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack#macos)
  
```
❯ cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

<img width="946" alt="Screen Shot 2022-08-21 at 1 14 50 AM" src="https://user-images.githubusercontent.com/33442330/185778221-adabf65b-400a-41bd-8414-ce1dddbd9da6.png">

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

## Commands browser
```
Command-Shift + [ -> Move to tab backward
Command-Shift + ] -> Move to tab forward
Command + t -> Create tab
Command + w -> Close tab
```

## Keyboard - Terminal
```
Cntrl-Raise + s -> Move word by word backward
Cntrl-Raise + f -> Move word by word forward
```
## Widgets
<img width="358" alt="Screen Shot 2022-08-21 at 2 52 16 AM" src="https://user-images.githubusercontent.com/33442330/185781373-a50c50b0-9aeb-4cbc-aa27-98a2f032a017.png">
