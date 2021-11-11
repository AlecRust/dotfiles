# dotfiles [![Lint](https://github.com/AlecRust/dotfiles/actions/workflows/lint.yml/badge.svg)](https://github.com/AlecRust/dotfiles/actions/workflows/lint.yml) [![Scripts](https://github.com/AlecRust/dotfiles/actions/workflows/scripts.yml/badge.svg)](https://github.com/AlecRust/dotfiles/actions/workflows/scripts.yml)

My macOS setup.

## Install

1. Restore [backup files](#backup-files) from old machine (optional)

2. Install [Homebrew](https://brew.sh/)

3. Clone repo (if not restored from backup) to `~/projects/personal/dotfiles`

4. Run the following command from `~/projects/personal/dotfiles`:

    ```sh
    ~/projects/personal/dotfiles/setup.sh
    ```

5. Complete [manual steps](#manual-steps)

### Manual Steps

1. Modify macOS settings

    - In Finder sidebar enable `alec` and `Alec's MacBook`, disable Tags and add `~/projects` to Favorites
    - [Enable Full Disk access](https://support.apple.com/en-us/HT210595) for iTerm2
    - Map <kbd>⇪</kbd> key to <kbd>Ctrl</kbd> at `Keyboard > Modifier Keys`
    - Disable double-space period at `Keyboard > Text`
    - Enable "Show Percentage" at `Dock & Menu Bar > Battery`
    - Search for and add printer in "Printers & Scanners"

2. Set up remote connections

    - Set up new default SSH keys and GitHub connection with `gh auth login`
    - Import GPG keys or create with `gpg --full-generate-key` and [add to GitHub](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)
    - Copy SSH keys from each machine on local network with `ssh-copy-id`
    - Set up AWS connection with `aws configure`
    - Set up Heroku connection with `heroku login` and `heroku keys:add`

3. Set up other apps

    - Import Raycast settings from Google Drive
    - Sourcetree
        - General: Disable modifying of global `.gitconfig`
        - General: Set terminal app to iTerm2
        - General: Enable "Open links on GitHub.com with Sourcetree"
        - Diff: Set font to Fira Code 12pt
        - Diff: Set diff tool to Kaleidoscope
        - Diff: Allow `Gemfile.lock` in "Ignore File Patterns"
        - Git: Enable "Use rebase instead of merge by default for tracked bracnhes"
        - Advanced: Enable "Allow force push"
    - Disable "Hardware Media Key Handling" in `brave://flags`
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
- `~/.ssh`
- [Exported](https://gpgtools.tenderapp.com/kb/gpg-keychain-faq/backup-or-transfer-your-keys#backup-single-key) GPG keys
