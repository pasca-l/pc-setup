#!/bin/zsh

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# add Homebrew to PATH, for zsh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install applications via Homebrew
# using Brewfile, created from `brew bundle dump`
brew bundle --file=./Brewfile
# add path for nodebrew
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> $HOME/.zshrc
# load settings
source $HOME/.zshrc

# -- optional --
# copy Latexmk to home directory
cp ./.latexmkrc ~/.latexmkrc
