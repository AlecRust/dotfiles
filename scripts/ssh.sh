#!/bin/sh

echo "== Installing Homebrew Git =="

brew install git

echo "== Setting up GitHub SSH key pair =="

# Generate key pair from email
echo "Enter GitHub email address:"
read github_email
ssh-keygen -t rsa -b 4096 -C "$github_email"

# Start ssh-agent
eval "$(ssh-agent -s)"

# Add generated key to ssh-agent
ssh-add ~/.ssh/id_rsa

# Copy generated key to clipboard
pbcopy < ~/.ssh/id_rsa.pub

echo "Press enter to paste SSH key in GitHub"
read throwaway_input
open https://github.com/settings/ssh/new
