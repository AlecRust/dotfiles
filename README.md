# dotfiles

My macOS setup.

## Install

1. Restore [backup files](#backup-files) from old machine (optional)

2. Install [Homebrew](https://brew.sh/)

3. Clone repo (if not restored from backup) to `~/projects/personal/dotfiles`

3. Run setup script

    ```sh
    ~/projects/personal/dotfiles/setup.sh
    ```

4. Complete [manual steps](#manual-steps)

### Manual Steps

1. Modify macOS settings

    - In Finder sidebar enable Home directory, disable Tags and add `projects` to Favorites
    - [Enable Full Disk access](https://support.apple.com/en-us/HT210595) for iTerm2
    - Enable remote login via SSH with `sudo systemsetup -setremotelogin on`
    - Map <kbd>⇪</kbd> key to <kbd>Ctrl</kbd> at Keyboard > Modifier Keys
    - Disable Spotlight hotkey at Keyboard > Shortcuts > Spotlight

2. Set up GitHub SSH connection with `gh auth login` and AWS CLI with `aws configure`

3. Import GPG keys or create with `gpg --full-generate-key` and [add to GitHub](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)

4. Set up other apps

    - Raycast
        - Set keyboard shortcut to <kbd>⌘</kbd> + <kbd>Space</kbd>
        - Set custom scripts directory from Google Drive
        - Set `txs` alias for "Start Tmuxinator Project" custom script
    - Sourcetree
        - Set diff tool to Kaleidoscope
        - Set font to Fira Code 12pt
        - Disable modifying of global `.gitconfig`
    - Remove Rectangle's "Center Third" and record that shortcut as "Almost Maximize"
    - Disable "Hardware Media Key Handling" in `brave://flags`
    - Import iStat Menus settings from Google Drive
    - Set up Hidden Bar ([screenshot](https://i.imgur.com/Q1FwwJR.png))
    - Enable Git force push in Sourcetree advanced settings
    - Change Kaleidoscope settings to use dark background and Fira Code 12pt font
    - Install Sonos S2 app

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
- `~/.ssh/config` and any others you want to keep from here such as PEM files
- [Exported](https://gpgtools.tenderapp.com/kb/gpg-keychain-faq/backup-or-transfer-your-keys#backup-single-key) GPG keys
