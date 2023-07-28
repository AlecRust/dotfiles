#!/bin/sh

echo "==> 📜 Installing latest Node version"

rtx install node@latest

echo "==> 📜 Setting latest Node as shell default"

rtx use -g node@latest
