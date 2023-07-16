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

alias tmToFolder="tmn myFolder -c ~/myFolder"
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
