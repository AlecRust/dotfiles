# Change command execution time stamp shown in the history command output
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

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

# Set 1Password agent socket path
# https://developer.1password.com/docs/ssh/agent/compatibility/#ssh-auth-sock
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# HSTR configuration
setopt histignorespace
export HSTR_CONFIG=hicolor
bindkey -s "\C-r" "\C-a hstr -- \C-j"

# Allow [ or ] wherever you want i.e. Rake tasks
unsetopt nomatch

# Source Starship
eval "$(starship init zsh)"

# Source Antidote
source $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh

# Set variables required by Oh My Zsh plugins
ZSH=$(antidote path ohmyzsh/ohmyzsh)
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/oh-my-zsh"
[[ -d $ZSH_CACHE_DIR ]] || mkdir -p $ZSH_CACHE_DIR

# Load Antidote
antidote load

# Source rtx
eval "$(rtx activate zsh)"

# Source 1Password Shell Plugins
# https://developer.1password.com/docs/cli/shell-plugins/
source $HOME/.config/op/plugins.sh

# Source .aliases and .extra if they exist
if [[ -f $HOME/.aliases ]]; then
  source $HOME/.aliases
fi

if [[ -f $HOME/.extra ]]; then
  source $HOME/.extra
fi
