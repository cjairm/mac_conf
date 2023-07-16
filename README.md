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

### some extra help if needed
https://www.youtube.com/watch?v=k94qImbFKWE

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

## Mission Control
<img width="403" alt="Screen Shot 2022-08-21 at 1 27 44 AM" src="https://user-images.githubusercontent.com/33442330/185778602-dbab1f1f-8e89-4127-acba-8fdef22239e3.png">
<img width="404" alt="Screen Shot 2022-08-21 at 1 27 58 AM" src="https://user-images.githubusercontent.com/33442330/185778603-16b14e47-7523-4d59-9783-7a23255da2e3.png">

## Useful aliases
```
alias nvim_sf="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"
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
