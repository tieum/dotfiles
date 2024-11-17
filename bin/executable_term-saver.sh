#!/bin/bash

if [[ ! $(ps aux | grep asciiquarium | grep -v grep) ]]; then
	asciiquarium
elif [[ ! $(ps aux | grep cacaclock | grep -v grep) ]]; then
	random-ascii-clock.sh
#elif [[ ! $(ps aux | grep cacafire | grep -v grep) ]]; then
#	cacafire
else
	random-ascii-clock.sh
fi
