# shellcheck disable=SC2148,SC1091

# https://consoledonottrack.com/
export DO_NOT_TRACK=1

# Add timestamp display to `history` command
export HIST_STAMPS="dd.mm.yyyy"

# Set VSCode as the default editor
export EDITOR="code"

# Change lsd "overly permissive permissions" indicator to be more readable
export LS_COLORS="$LS_COLORS:ow=30;101:"


# Extend PATH
# 1. Add GNU versions of core utilities to start of PATH to override defaults
# 2. Add X11 (XQuartz) to end of PATH
# NOTE: Overriding core utils with GNU equivalents causes 'brew doctor' warnings
export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:$PATH"
export PATH="$HOMEBREW_PREFIX/opt/libpq/bin:$PATH"
export PATH="$PATH:/opt/X11/bin"

# Load Antidote and plugins
source "$HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh"
antidote load

# Source additional files last to override any plugins
[[ -f $HOME/.aliases ]] && source "$HOME/.aliases"
[[ -f $HOME/.extra ]] && source "$HOME/.extra"
