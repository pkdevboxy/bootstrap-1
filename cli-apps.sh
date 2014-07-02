#!/usr/bin/env bash
export BOOTSTRAP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir ~/.bin

curl "https://dl.dropboxusercontent.com/u/1397059/apps/webify" -o ~/.bin/webify
chmod +x ~/.bin/webify

cp "${BOOTSTRAP_DIR}/init/bin/generate_ctags" ~/.bin/
chmod +x ~/.bin/generate_ctags


npm install -g svgo
npm install -g svg-sprite
