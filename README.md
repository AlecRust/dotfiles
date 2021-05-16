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

1. In Finder sidebar enable Home directory, disable Tags and add `projects` to Favorites

2. [Replace Spotlight key for Raycast](https://www.notion.so/Hotkey-56103210375b4fc78b63a7c5e7075fb7)

3. Setup GitHub SSH connection

  ```sh
  gh auth login
  ```

4. Link apps with Google Drive

    - Set Raycast custom scripts directory
    - Import iStat Menus settings

5. Set up other apps

    - Remove "Center Third" and record that shortcut as "Almost Maximize"
    - Update Sourcetree "Diff" settings to use Kaleidoscope diff tool and Fira Code 12pt font
    - Install Sonos S2 app
