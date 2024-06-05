# Migrated to https://github.com/cjairm/devenv

---

# Productivity Configuration for Mac

## Install Raycast
Replace spotlight with [Raycast](https://www.raycast.com/).

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

## Useful aliases
```
alias nvim_sf="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"
# needs
# - brew install fd
# - brew install fzf
alias call="tmux clear-history"
```

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
