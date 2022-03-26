# Path to Oh My Zsh installation
export ZSH=$HOME/.oh-my-zsh

# Use case-sensitive completion
# CASE_SENSITIVE="true"

# Prevent permission errors
ZSH_DISABLE_COMPFIX="true"

# Use hyphen-insensitive completion. Case-sensitive completion must
# be off. _ and - will be interchangeable
# HYPHEN_INSENSITIVE="true"

# Disable Oh My Zsh bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Automatically update without prompting
# DISABLE_UPDATE_PROMPT="true"

# How often to auto-update (in days)
# export UPDATE_ZSH_DAYS=13

# Fix pasting URLs and other text being messed up
# https://github.com/ohmyzsh/ohmyzsh/issues/6338#issuecomment-491504348
DISABLE_MAGIC_FUNCTIONS="true"

# Disable colors in ls
# DISABLE_LS_COLORS="true"

# Disable auto-setting terminal title
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change command execution time stamp shown in the history command output
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Use another custom folder than $ZSH/custom
# ZSH_CUSTOM=/path/to/new-custom-folder

# Oh My Zsh plugins - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
plugins=(zsh-autosuggestions tmux tmuxinator direnv git yarn macos z alias-tips thefuck rbenv ruby rails bundler volta zsh-syntax-highlighting zsh-pyenv)

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

# Add GNU core utilities to beginning
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Set Volta variable and add to beginning
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Add X11 (XQuartz) to end
export PATH="$PATH:/opt/X11/bin"

# Add MacGPG2 to end
export PATH="$PATH:/usr/local/MacGPG2/bin"

# Set Go path vars and add them to end
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# export MANPATH="/usr/local/man:$MANPATH"

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

# Allow [ or ] whereever you want i.e. Rake tasks
unsetopt nomatch

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Source Starship
eval "$(starship init zsh)"

# Source 1Password shell completion
eval "$(op completion zsh)"; compdef _op op

# Source .aliases and .extra
source $HOME/.aliases
source $HOME/.extra

# Source iTerm2 Shell Integration
# https://iterm2.com/documentation-shell-integration.html
source $HOME/.iterm2_shell_integration.zsh
