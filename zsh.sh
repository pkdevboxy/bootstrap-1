#!/usr/bin/env bash

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

cp "${BOOTSTRAP_DIR}/init/oh-my-zsh/custom.zsh" ~/.oh-my-zsh/custom
cp "${BOOTSTRAP_DIR}/init/oh-my-zsh/zshrc" ~/.zshrc