#!/bin/sh

echo "==> 📜 Installing latest Python version"

rtx install python@latest

echo "==> 📜 Setting latest Python as shell default"

rtx use -g python@latest
