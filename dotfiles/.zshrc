# Path to Oh My Zsh installation
export ZSH=$HOME/.oh-my-zsh

# Prevent permission errors
ZSH_DISABLE_COMPFIX="true"

# Disable Oh My Zsh auto-update behavior
zstyle ':omz:update' mode disabled

# Improve formatting of pasted URLs and other text
# https://github.com/ohmyzsh/ohmyzsh/issues/6338#issuecomment-491504348
DISABLE_MAGIC_FUNCTIONS="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Change command execution time stamp shown in the history command output
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Oh My Zsh plugins - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
plugins=(
  brew
  asdf
  tmux
  tmuxinator
  fzf
  git
  npm
  yarn
  bundler
  composer
  ruby
  rails
  macos
  1password
  thefuck
  alias-tips
  zoxide
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Add Homebrew versions of core utilities to start of PATH to override defaults
# NOTE: This causes "non-prefixed coreutils" 'brew doctor' warning which is fine
export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:$PATH"

# Add X11 (XQuartz) to end of PATH
export PATH="$PATH:/opt/X11/bin"

# Set language environment
export LANG=en_GB.UTF-8

# Set VSCode as the default editor
export EDITOR="code"

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# HSTR configuration
setopt histignorespace
export HSTR_CONFIG=hicolor
bindkey -s "\C-r" "\C-a hstr -- \C-j"

# Configure 1Password agent socket path
# https://developer.1password.com/docs/ssh/agent/compatibility/#ssh-auth-sock
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Allow [ or ] wherever you want i.e. Rake tasks
unsetopt nomatch

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Source Starship
eval "$(starship init zsh)"

# Source asdf-direnv
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"

# Source iTerm2 Shell Integration
source $HOME/.iterm2_shell_integration.zsh

# Source 1Password Shell Plugins
# https://developer.1password.com/docs/cli/shell-plugins/
source $HOME/.config/op/plugins.sh

# Source .aliases and .extra
source $HOME/.aliases
source $HOME/.extra
