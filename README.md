# Alec’s dotfiles

## Before Format

1. Backup large/untracked files and folders from Home directory

    - `~/Desktop`
    - `~/Documents`
    - `~/Downloads`
    - `~/Google Drive`
    - `~/projects`
    - `~/scripts`
    - `~/.extra`
    - `~/.zsh_history`

## After Format

1. Copy backed up files and folders to Home directory

2. Open Terminal app and [install Homebrew](https://brew.sh/) which installs Xcode Command Line Tools

3. Run install/setup scripts

    - `./projects/personal/dotfiles/symlinks.sh`
    - `./projects/personal/dotfiles/brew.sh`
    - `./projects/personal/dotfiles/ruby.sh`
    - `./projects/personal/dotfiles/node.sh`
    - `./projects/personal/dotfiles/cask.sh`

5. Install Oh My Zsh and manual plugins/themes

    - [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
    - [alias-tips](https://github.com/djui/alias-tips)
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-nvm](https://github.com/lukechilds/zsh-nvm)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    - [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)

4. Change macOS settings
    ```sh
    ./projects/personal/dotfiles/.macos
    ```

3. Install apps manually

  - App Store
    - Affinity Designer
    - Affinity Photo
    - Disk Map
    - Home Assistant
    - Jira
    - Lungo
    - Shazam
    - Speedtest
    - Xcode
  - Other
    - Sonos
