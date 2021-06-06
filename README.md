# dotfiles [![Lint](https://github.com/AlecRust/dotfiles/actions/workflows/lint.yml/badge.svg)](https://github.com/AlecRust/dotfiles/actions/workflows/lint.yml) [![Scripts](https://github.com/AlecRust/dotfiles/actions/workflows/scripts.yml/badge.svg)](https://github.com/AlecRust/dotfiles/actions/workflows/scripts.yml)

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

    - In Finder sidebar enable `alec` and `Alec's MacBook`, disable Tags and add `~/projects` to Favorites
    - [Enable Full Disk access](https://support.apple.com/en-us/HT210595) for iTerm2
    - Map <kbd>⇪</kbd> key to <kbd>Ctrl</kbd> at `Keyboard > Modifier Keys`
    - Disable double-space period at `Keyboard > Text`

2. Set up remote connections

    - Set up new default SSH keys and GitHub connection with `gh auth login`
    - Import GPG keys or create with `gpg --full-generate-key` and [add to GitHub](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)
    - Copy SSH keys from each machine on local network with `ssh-copy-id`
    - Set up AWS connection with `aws configure`

3. Set up other apps

    - Raycast
        - Set keyboard shortcut to <kbd>⌘</kbd> + <kbd>Space</kbd>
        - Set custom scripts directory from Google Drive
        - Set `txs` alias for "Start Tmuxinator Project" custom script
    - Sourcetree
        - Disable modifying of global `.gitconfig`
        - Set diff tool to Kaleidoscope
        - Set terminal app to iTerm2
        - Set font to Fira Code 12pt
        - Enable "Open links on GitHub.com with Sourcetree"
        - Enable Git force push in advanced settings
        - Allow `Gemfile.lock` in "Ignore File Patterns"
    - Replace Rectangle's "Center Third" shortcut with "Almost Maximize"
    - Disable "Hardware Media Key Handling" in `brave://flags`
    - Import iStat Menus settings from Google Drive
    - Set up Hidden Bar ([screenshot](https://i.imgur.com/Q1FwwJR.png))
    - Change Kaleidoscope settings to use dark background and Fira Code 12pt font
    - Install Sonos S2 app

### Backup Files

Things to backup to an external drive if moving from an old machine:

- `~/Desktop`
- `~/Documents`
- `~/Downloads`
- `~/Google Drive`
- `~/projects`
- `~/.extra`
- `~/.zsh_history`
- `~/.ssh/config` and any others you want to keep from here such as PEM files
- [Exported](https://gpgtools.tenderapp.com/kb/gpg-keychain-faq/backup-or-transfer-your-keys#backup-single-key) GPG keys
