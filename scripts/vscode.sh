#!/bin/sh

REPO_PATH=$(cd "$(dirname "$0")"/.. && pwd)

echo "==> 📜 Installing Visual Studio Code"

brew install --cask visual-studio-code

echo "==> 🔗 Symlinking Visual Studio Code settings"

ln -sf "$REPO_PATH/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

echo "==> 📜 Installing Visual Studio Code extensions"

# Editor
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension GitHub.vscode-pull-request-github
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-labs
code --install-extension GitHub.vscode-github-actions
code --install-extension DanielSanMedium.dscodegpt
code --install-extension keesschollaart.vscode-home-assistant
code --install-extension shyykoserhiy.vscode-spotify
code --install-extension NuclleaR.vscode-extension-auto-import
code --install-extension christian-kohler.npm-intellisense
code --install-extension wix.vscode-import-cost
code --install-extension vincaslt.highlight-matching-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension WakaTime.vscode-wakatime
code --install-extension gruntfuggly.todo-tree

# Languages
code --install-extension Shopify.ruby-lsp
code --install-extension KoichiSasada.vscode-rdbg
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension bierner.lit-html
code --install-extension idleberg.applescript
code --install-extension redhat.vscode-yaml
code --install-extension tamasfe.even-better-toml
code --install-extension bradlc.vscode-tailwindcss
code --install-extension Vue.volar
code --install-extension Vue.vscode-typescript-vue-plugin
code --install-extension Prisma.prisma
code --install-extension Tobermory.es6-string-html

# Linting
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension stylelint.vscode-stylelint
code --install-extension HTMLHint.vscode-htmlhint
code --install-extension kokororin.vscode-phpfmt
code --install-extension timonwong.shellcheck
