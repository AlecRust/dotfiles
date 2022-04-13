# Path to Oh My Zsh installation
export ZSH=$HOME/.oh-my-zsh

# Prevent permission errors
ZSH_DISABLE_COMPFIX="true"

# Use hyphen-insensitive completion. Case-sensitive completion must
# be off. _ and - will be interchangeable
# HYPHEN_INSENSITIVE="true"

# Disable Oh My Zsh auto-update behavior
zstyle ':omz:update' mode disabled

# Fix pasting URLs and other text being messed up
# https://github.com/ohmyzsh/ohmyzsh/issues/6338#issuecomment-491504348
DISABLE_MAGIC_FUNCTIONS="true"

# Disable auto-setting terminal title
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Change command execution time stamp shown in the history command output
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Oh My Zsh plugins - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
plugins=(
  asdf
  zoxide
  zsh-autosuggestions
  tmux
  tmuxinator
  git
  yarn
  bundler
  ruby
  rails
  zsh-syntax-highlighting
  alias-tips
  thefuck
  macos
  1password
)

# Build up $PATH from scratch
# ---------------------------

# Set default path
# Start with the original path (see /etc/paths)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Add `~/bin` to beginning
export PATH="$HOME/bin:$PATH"

# TODO: Remove this, it should not be necessary
# Adds Homebrew to beginning to patch Homebrew installation on M1 chips
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

# Add `/usr/local/sbin` to beginning, to make
# scripts that require root priviledges available
export PATH="/usr/local/sbin:$PATH"

# Add Homebrew GNU core utilities (chmod etc.) to beginning to override system defaults
# NOTE: This causes "can cause GMP builds to fail" brew doctor warning which is fine
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# Add X11 (XQuartz) to end
export PATH="$PATH:/opt/X11/bin"

# Add MacGPG2 to end
export PATH="$PATH:/usr/local/MacGPG2/bin"

# Set language environment
export LANG=en_GB.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set VSCode as the default editor
export EDITOR="code"

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# HSTR configuration
setopt histignorespace
export HSTR_CONFIG=hicolor
bindkey -s "\C-r" "\C-a hstr -- \C-j"

# Allow [ or ] wherever you want i.e. Rake tasks
unsetopt nomatch

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Source Starship
eval "$(starship init zsh)"

# Source asdf-direnv
source ${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc

# Source iTerm2 Shell Integration
source $HOME/.iterm2_shell_integration.zsh

# Source .aliases and .extra
source $HOME/.aliases
source $HOME/.extra
