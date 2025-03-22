# shellcheck disable=SC2148

# Load Homebrew shell environment (adds bins to PATH)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load mise shims for non-interative shells
eval "$(mise activate zsh --shims)"
