#!/bin/bash

# Brewfile hash: {{ include "dot_config/homebrew/Brewfile" | sha256sum }}

echo "----- start: brew-bundle.sh -----"

if [[ -e $HOME/.config/homebrew/Brewfile ]]; then
	echo "Installing homebrew..."
	brew bundle --no-upgrade --file $HOME/.config/homebrew/Brewfile
	echo "Done installing homebrew"
else
	echo "No Brewfile in .config/homebrew, nothing to install"
fi

echo "----- end: brew-bundle.sh -----"
