#!/usr/bin/env bash

pushd "`dirname $0`/.."

echo "+---------------------------------------+"
echo "|      Install Homebrew & packages      |"
echo "+---------------------------------------+"

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Utils
brew install --cask warp
brew install --cask google-chrome
brew install --cask adobe-acrobat-reader
brew install --cask keepassxc
brew install --cask alt-tab
brew install --cask ubar

# Communication
brew install --cask telegram
brew install --cask slack

# Code editors & IDE
brew install --cask visual-studio-code
brew install --cask rider

# Git
brew install git
brew install git-flow
brew install gitversion

# Java
brew install openjdk

# Android
brew install --cask android-studio

# Unity
brew install --cask unity-hub

# Languages
brew install rbenv
brew install python
brew install nodejs

# Other tools
brew install docker
brew install jenkins

# Import vscode keybindings
echo "+-------------------------------------------------------------+"
echo "|      Import VSCode keybindings from ./settings/vscode/      |"
echo "+-------------------------------------------------------------+"
cp ./settings/vscode/keybindings.mac.json ~/Library/Application\ Support/Code/User/keybindings.json
cp ./settings/vscode/settings.mac.json ~/Library/Application\ Support/Code/User/settings.json

# Change default text editor to VSCode
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.microsoft.VSCode;}'

popd
