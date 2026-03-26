# dotfiles

Home for my dotfiles. Probably nothing too crazy here, at least not yet :)

## Clone and install

```bash
git clone --recurse-submodules https://github.com/Ahajha/dotfiles.git ~/dotfiles && cd ~/dotfiles && ./bootstrap.sh
```

Because I forget frequently: To pull new submodules after already cloning, run `git submodule update --init`.

## Manual steps

After these steps, run a few more manual commands:

```sh
gh auth login
```

## Keyboard Shortcuts

My workflow revolves around lots of keyboard shortcuts for things. A lot of
things are still done with the mouse, but here's a (non-exhaustive) list of
keybinds that I use on a daily basis:

```text
# VSCode (Navigation, builtin)
Ctrl + Shift + E -> Workspace file browser
Ctrl + Shift + F -> Find in workspace
Ctrl + Shift + G -> Git actions (add/commit/push in GUI)
Ctrl + Shift + H -> Find + replace in workspace
Ctrl + Shift + X -> Manage extensions
Ctrl + w -> Close current tab
Ctrl + b -> Toggle right pane
Ctrl + j -> Toggle terminal
Ctrl + ` -> Focus terminal
Ctrl + 1 -> Focus editor 1
Ctrl + 2 -> Focus editor 2 (I never go past 2 editors)
Ctrl + Shift + R -> Move current tab to new editor to the right
Ctrl + p -> Find and open file (fuzzy search)
Ctrl + Shift + P -> Actions menu
Ctrl + Page up/down -> Navigate editor tabs left/right
Ctrl + Shift + T -> Reopen last closed tab
Ctrl + f -> Find in current editor
Ctrl + h -> Find + replace in current editor
# VSCode (Navigation, custom)
Ctrl + Shift + B -> Go to closest BUILD.bazel file
Ctrl + o -> Open folder in current window
Ctrl + d -> Go to definition
Ctrl + Shift + D -> Go back
# VSCode (Editing, builtin)
Ctrl + Shift + Up/Down -> Make more cursors above/below current
Ctrl + Shift + Left/Right -> Select previous/next word
Ctrl + s -> Save (should be obvious but just in case it isn't)
Ctrl + c/x/v -> Copy/Cut + Paste (also should be obvious)
# Browser (Firefox)
Ctrl + w -> Close tab
Ctrl + Page up/down -> Navigate editor tabs left/right
Ctrl + t -> New tab
Ctrl + Shift + T -> Reopen last closed tab
# Slack
Alt + Shift + Down -> Open next unread message or DM (doesn't work with threads)
# Desktop environment (Cosmic, most builtin)
Ctrl + Alt + T -> Open terminal emulator
Super -> Launch application/Select open application
Super + Left/Right -> Focus application to the left/right (usually switching monitors)
Super + Up/Down -> Move workspaces
Super + Shift + Left/Right -> Move application left/right (switching/splitting monitors)
Super + Shift + Up/Down -> Move application within or between workspaces (same monitor)
Super + Shift + 0 -> Move application to its own workspace
Super + q -> Close current application (Ctrl + w works for some apps but not all)
```
