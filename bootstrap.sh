#!/usr/bin/env bash

export BOOTSTRAP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $BOOTSTRAP_DIR

# install The Command Line Developer Tools
xcode-select --install
sudo xcodebuild -license

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install homebrew packets
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew bundle

# brew post install config

# postgres
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

# alfred
brew cask alfred link


# Install other apps
./cli-apps.sh

# configure OS X
./osx.sh

# configure zsh & install oh-my-zsh
./zsh.sh

# install rubies
./ruby.sh

# install dnsmasq & add .dev domain
./dnsmasq.sh