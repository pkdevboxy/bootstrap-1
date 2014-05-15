#!/usr/bin/env bash

export RUBY_CONFIGURE_OPTS="--with-readline-dir=$(brew --prefix readline)"
RUBY_20=2.0.0-p481

brew install rbenv
brew install ruby-build

# if [ -n "${ZSH_VERSION:-}" ]; then
#   echo 'eval "$(rbenv init -)"' >> ~/.zshrc
# else
#   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
# fi
eval "$(rbenv init -)" # load rbenv in the current shell

rbenv install $RUBY_20
rbenv shell $RUBY_20
gem install --no-ri --no-rdoc bundler pry

rbenv global $RUBY_20
rbenv rehash

git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash