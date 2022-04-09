#!/bin/sh

echo "==> 📜 Installing latest Python with asdf"

# Install the Python plugin https://github.com/danhper/asdf-python
asdf plugin add python

# Install the latest Python version
asdf install python latest

echo "==> 📜 Setting latest Python as shell default"

asdf global python latest
