#!/bin/bash

# Brewfile hash: {{ include "private_Library/LaunchAgents/tieum.generate.brewfile.plist" | sha256sum }}

echo "----- start: reload-launchctl-brewfile.sh -----"
launchctl unload /Users/tieum/Library/LaunchAgents/tieum.generate.brewfile.plist
launchctl load /Users/tieum/Library/LaunchAgents/tieum.generate.brewfile.plist
echo "----- end: reload-launchctl-brewfile.sh -----"
