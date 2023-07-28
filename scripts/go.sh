#!/bin/sh

echo "==> 📜 Installing latest Go version"

rtx install go@latest

echo "==> 📜 Setting latest Go as shell default"

rtx use -g go@latest
