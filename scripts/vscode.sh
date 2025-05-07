#!/bin/sh

REPO_PATH="$(cd "$(dirname "$0")/.." && pwd)"

echo "==> 📜 Installing Visual Studio Code"

brew install --cask visual-studio-code

echo "==> 🔗 Symlinking Visual Studio Code settings"

ln -sf "$REPO_PATH/configs/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

echo "==> 📜 Installing Visual Studio Code extensions"

# Editor
code --install-extension EditorConfig.EditorConfig
code --install-extension mattlott.copy-github-url
code --install-extension GitHub.vscode-pull-request-github
code --install-extension GitHub.copilot
code --install-extension GitHub.vscode-github-actions
code --install-extension me-dutour-mathieu.vscode-github-actions
code --install-extension keesschollaart.vscode-home-assistant
code --install-extension shyykoserhiy.vscode-spotify
code --install-extension christian-kohler.npm-intellisense
code --install-extension wix.vscode-import-cost
code --install-extension vincaslt.highlight-matching-tag
code --install-extension WakaTime.vscode-wakatime
code --install-extension gruntfuggly.todo-tree
code --install-extension ms-azuretools.vscode-docker
code --install-extension yoavbls.pretty-ts-errors
code --install-extension Fralle.copy-code-context

# Testing
code --install-extension ms-playwright.playwright
code --install-extension Orta.vscode-jest
code --install-extension vitest.explorer

# Languages
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension bierner.lit-html
code --install-extension idleberg.applescript
code --install-extension redhat.vscode-yaml
code --install-extension tamasfe.even-better-toml
code --install-extension bradlc.vscode-tailwindcss
code --install-extension Vue.volar
code --install-extension Prisma.prisma
code --install-extension Tobermory.es6-string-html

# Linting
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension stylelint.vscode-stylelint
code --install-extension HTMLHint.vscode-htmlhint
code --install-extension timonwong.shellcheck
code --install-extension biomejs.biome
