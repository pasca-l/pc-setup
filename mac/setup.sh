#!/bin/bash

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# add Homebrew to PATH, for zsh
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/sy/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install applications via Homebrew
# using Brewfile, created from `brew bundle dump`
brew bundle --file=./Brewfile

# -- optional --
# copy Latexmk to home directory
cp ./.latexmkrc ~/.latexmkrc
