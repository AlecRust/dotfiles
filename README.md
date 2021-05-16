# dotfiles

My macOS setup.

## Install

1. Restore [backup files](#backup-files) from old machine (optional)

2. Install [Homebrew](https://brew.sh/)

3. Clone repo (if not restored from backup)

    ```sh
    git clone https://github.com/AlecRust/dotfiles ~/projects/personal/dotfiles
    ```

3. Run setup script

    ```sh
    ~/projects/personal/dotfiles/setup.sh
    ```

4. Complete [manual steps](#manual-steps)

### Backup Files

Things to backup to an external drive if moving from an old machine:

- `~/Desktop`
- `~/Documents`
- `~/Downloads`
- `~/Google Drive`
- `~/projects`
- `~/scripts`
- `~/.extra`
- `~/.zsh_history`
- Any SSH keys from `~/.ssh` you want to keep and GPG keys

### Manual Steps

1. Modify settings

    - In Finder sidebar enable Home directory, disable Tags and add `projects` to Favorites
    - Map <kbd>⇪</kbd> key to <kbd>⌃</kbd> at Keyboard > Modifier Keys
    - Disable Spotlight hotkey at Keyboard > Shortcuts > Spotlight

2. Setup GitHub SSH connection

  ```sh
  gh auth login
  ```

3. Set up other apps

    - Set Raycast keyboard shortcut to <kbd>⌘</kbd> + <kbd>Space</kbd>
    - Set Raycast custom scripts directory from Google Drive and keyboard shortcut
    - Remove "Center Third" and record that shortcut as "Almost Maximize"
    - Update Sourcetree "Diff" settings to use Kaleidoscope diff tool and Fira Code 12pt font
    - Import iStat Menus settings from Google Drive
    - Install Sonos S2 app
