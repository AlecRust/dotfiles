# shellcheck disable=SC2148

# Runs before husky hooks, in non-interative shell environments like Sourcetree
# https://typicode.github.io/husky/how-to.html#node-version-managers-and-guis

# Add mise shims to PATH
export PATH="$HOME/.local/share/mise/shims:$PATH"
