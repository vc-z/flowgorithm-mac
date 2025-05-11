#!/bin/bash

export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH" 

wine_path=$(which wine)
assets_path="$(dirname "$0")"

# run wine
$wine_path $assets_path/Flowgorithm.exe

exit 0