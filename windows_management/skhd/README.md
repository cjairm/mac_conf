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
