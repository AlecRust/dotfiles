#!/bin/sh

echo "==> 📜 Installing latest Go with asdf"

# Install the Go plugin
asdf plugin add golang

# Install the latest Go version
asdf install golang latest

echo "==> 📜 Setting latest Go as shell default"

asdf global golang latest
