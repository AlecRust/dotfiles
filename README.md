# dotfiles [![Lint](https://github.com/AlecRust/dotfiles/actions/workflows/lint.yml/badge.svg)](https://github.com/AlecRust/dotfiles/actions/workflows/lint.yml) [![Scripts](https://github.com/AlecRust/dotfiles/actions/workflows/scripts.yml/badge.svg)](https://github.com/AlecRust/dotfiles/actions/workflows/scripts.yml)

My macOS setup.

## Install

1. In Finder press <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>.</kbd> to show hidden files then restore [backup files](#backup-files) (optional)

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
    - Map <kbd>⇪</kbd> key to <kbd>Ctrl</kbd> at `Keyboard > Keyboard Shortcuts > Modifier Keys`
    - Disable "Add period with double-space" at `Keyboard > Text Input > Input Sources`
    - Enable "Show Percentage" in `Control Centre` settings
    - Enable "Remote Login" in `Sharing` for SSH access
    - Search for and add printer in "Printers & Scanners"

2. Set up remote connections

    - Set up GitHub connection with `gh auth login`
    - Import GPG keys or create with `gpg --full-generate-key` and [add to GitHub](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)
    - Set up Heroku connection with `heroku login` and `heroku keys:add`
    - Set up 1Password connection with `op account add`
    - Copy SSH keys from each machine on local network with `ssh-copy-id`

3. Set up other apps

    - Import Raycast settings from Google Drive
    - Disable "Hardware Media Key Handling" in `brave://flags`
    - Sourcetree
        - General: Disable modifying of global `.gitconfig`
        - General: Set terminal app to iTerm
        - General: Enable "Open links on GitHub.com with Sourcetree"
        - Diff: Set font to Fira Code 12pt
        - Diff: Set diff tool to Kaleidoscope
        - Diff: Remove `Gemfile.lock` from "Ignore File Patterns"
        - Git: Click "Use System Git" and select `/opt/homebrew/bin/git`
        - Git: Enable "Use rebase instead of merge by default for tracked branches"
        - Advanced: Enable "Allow force push"
    - Kaleidoscope
        - Set font to Fira Code 12pt
        - Set terminal app to iTerm
    - Install Sonos S2 app

### Backup Files

Things to backup to an external drive if moving from an old machine:

- `~/Desktop`
- `~/Downloads`
- `~/My Drive`
- `~/projects`
- `~/.config/op`
- `~/.extra`
- `~/.ssh`
- `~/.zsh_history`
- [Exported](https://gpgtools.tenderapp.com/kb/gpg-keychain-faq/backup-or-transfer-your-keys#backup-single-key) GPG keys
- [Exported](https://localwp.com/help-docs/getting-started/how-to-export-a-wordpress-site-on-local/) Local sites
