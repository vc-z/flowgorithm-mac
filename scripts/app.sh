#!/bin/bash

export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH" 

wine_path=$(which wine)
assets_path="$(dirname "$0")"

if [ -z "$wine_path" ]; then
  osascript -e 'display dialog "Wine is not installed. Please install it first." with title "Flowgorithm" buttons {"OK"} default button "OK"'
  open https://www.winehq.org/
  exit 1
fi

# run wine
$wine_path $assets_path/Flowgorithm.exe

exit 0