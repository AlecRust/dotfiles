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

1. Setup Finder sidebar

    Enable Home directory, disable Tags and add `projects`/`Google Drive` to Favorites

2. [Replace Spotlight key for Raycast](https://www.notion.so/Hotkey-56103210375b4fc78b63a7c5e7075fb7)

2. Link apps with Google Drive

    - Import iStat Menus settings
    - Set Raycast custom scripts directory

3. Install other apps

    - Sonos S2
