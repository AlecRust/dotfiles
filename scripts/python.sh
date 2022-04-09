#!/bin/sh

echo "==> 📜 Installing latest Python with asdf"

# Install the Python plugin
asdf plugin add python

# Install the latest Python version
asdf install python latest

echo "==> 📜 Setting latest Go as shell default"

asdf global python latest
