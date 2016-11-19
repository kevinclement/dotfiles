#!/bin/sh

echo "Setting up your Mac..."

# requires xcode and tools!
xcode-select -p || exit "XCode must be installed! (use the app store)"

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install any global npm packages
npm install -g gulp
npm install -g yarn

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos