# shellcheck disable=SC2148

# The following is for non-interactive shells (Sourcetree etc.)

# Add Homebrew bins to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add mise shims to PATH
eval "$(mise activate zsh --shims)"
