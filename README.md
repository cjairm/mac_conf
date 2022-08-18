# Productivity Configuration for Mac

## Install Homebrew
[Homebrew](https://brew.sh/) is the missing package manager for macOS (or Linux) and makes installing packages super easy.

## Install iTerm2
Replace the default Terminal.app in macOS by [iTerm2](https://iterm2.com/).

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

`Oh My ZSH` can be configured via the `.zshrc` configuration file ([using current aliases and nvim](https://github.com/cjairm/mac_conf/blob/main/.zshrc#L132-L137)):
- `zshconf`

## Themes terminals
1. [Color themes for default macOS Terminal.app](https://github.com/lysyi3m/macos-terminal-themes)
2. [Spaceship ZSH](https://github.com/spaceship-prompt/spaceship-prompt)
3. [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

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

## skhd
- Where to put the config file?
```
touch ~/.config/skhd/skhdrc
chmod +x ~/.config/skhd/skhdrc
```
- [Check configuration file here](https://github.com/cjairm/mac_conf/blob/main/skhdrc)

## Tmux
