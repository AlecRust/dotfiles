# shellcheck disable=SC2148,SC1091

# Change command execution time stamp shown with the 'history' command
export HIST_STAMPS="dd.mm.yyyy"

# HSTR configuration
setopt histignorespace
export HSTR_CONFIG=hicolor

# Set VSCode as the default editor
export EDITOR="code"

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# Set 1Password agent socket path
# https://developer.1password.com/docs/ssh/agent/compatibility/#ssh-auth-sock
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Extend PATH
# 1. Add Homebrew versions of core utilities to start of PATH to override defaults
# 2. Add X11 (XQuartz) to end of PATH
# NOTE: Homebrew GNU paths cause coreutils 'brew doctor' warnings which is fine
export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="$PATH:/opt/X11/bin"

# Source 1Password Shell Plugins
# https://developer.1password.com/docs/cli/shell-plugins/
source "$HOME/.config/op/plugins.sh"

# Source Antidote
source "$HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh"

# Set variables required by Oh My Zsh plugins
ZSH=$(antidote path ohmyzsh/ohmyzsh)
export ZSH
export ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/oh-my-zsh"
[[ -d $ZSH_CACHE_DIR ]] || mkdir -p "$ZSH_CACHE_DIR"

# Load Zsh plugins with Antidote
antidote load

# Source additional files last to override any plugins
[[ -f $HOME/.aliases ]] && source "$HOME/.aliases"
[[ -f $HOME/.extra ]] && source "$HOME/.extra"
