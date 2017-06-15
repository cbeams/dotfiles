#!/usr/bin/env bash

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew tap homebrew/dupes

FORMULAE=(
    bash
    coreutils
    findutils
    git
    httpie
    hub
    jq
    tree
    vim
    wget
)

brew install ${FORMULAE[@]}

brew cleanup

brew install caskroom/cask/brew-cask

CASKS=(
    1password
    backblaze
    bettertouchtool
    #bettersnaptool (app store only)
    bitsquare
    cleanmymac
    dropbox
    gitter
    google-chrome
    gpgtools
    intellij-idea-ce
    istat-menus
    iterm2
    launchbar
    skype
    torbrowser
    transmission
    vlc
)

brew cask install ${CASKS[@]}


RUBY_GEMS=(
    jekyll
)
sudo gem install ${RUBY_GEMS[@]}


# Show logging at boot time
sudo nvram boot-args="-v"

# Set fast key repeat rate and short delay until repeat
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array
