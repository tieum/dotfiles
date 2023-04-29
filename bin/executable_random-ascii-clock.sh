#!/bin/bash
realdir=$(dirname $(readlink -e $0))
fontpath=$realdir/fonts
font=$(ls $fontpath | sort -R | head -1)
cacaclock -f $fontpath/$font
