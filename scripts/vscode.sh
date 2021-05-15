#!/bin/sh

echo "== 📜 Installing Visual Studio Code =="

# Install Visual Studio Code
brew install --cask visual-studio-code

echo "== 🔗 Symlinking Visual Studio Code settings =="

# Create settings.json symlink
ln -s ~/projects/personal/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

echo "== 📜 Installing Visual Studio Code extensions =="

# Editor
code --install-extension christian-kohler.npm-intellisense
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension eg2.vscode-npm-script
code --install-extension GitHub.vscode-pull-request-github
code --install-extension keesschollaart.vscode-home-assistant
code --install-extension mikestead.dotenv
code --install-extension mrmlnc.vscode-postcss-sorting
code --install-extension ninoseki.vscode-gem-lens
code --install-extension shyykoserhiy.vscode-spotify
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension tgreen7.vs-code-node-require
code --install-extension timonwong.shellcheck
code --install-extension vincaslt.highlight-matching-tag
code --install-extension WakaTime.vscode-wakatime
code --install-extension wix.vscode-import-cost

# Languages
code --install-extension bierner.lit-html
code --install-extension bung87.vscode-gemfile
code --install-extension cpylua.language-postcss
code --install-extension digitalstreamio.mjml-syntax
code --install-extension dzhavat.css-initial-value
code --install-extension idleberg.applescript
code --install-extension ms-azuretools.vscode-docker
code --install-extension rebornix.ruby
code --install-extension redhat.vscode-yaml
code --install-extension ricard.postcss
code --install-extension wingrunr21.vscode-ruby

# Linting
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension kokororin.vscode-phpfmt
code --install-extension stylelint.vscode-stylelint

# Themes
code --install-extension atomiks.moonlight
