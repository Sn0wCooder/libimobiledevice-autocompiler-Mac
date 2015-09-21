#!/bin/bash
echo "Script created by Leonardo Alfreducci to autocompile libimobiledevice for Mac (latest version)."
sudo rm -R /usr/local/Cellar /usr/local/.git && brew cleanup
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install -v --devel --fresh automake autoconf libtool wget libimobiledevice
brew install -v --HEAD --fresh --build-from-source ideviceinstaller
cp /usr/local/Cellar/ideviceinstaller/HEAD/bin/ideviceinstaller  /usr/local/Cellar/libimobiledevice/
sudo gem install terminal-notifier
terminal-notifier -message "Click on this message to open bin folder." -title "libimobiledevice installed" -execute "open /usr/local/Cellar/libimobiledevice/*/bin/" -appIcon ./l.png
#open /usr/local/Cellar/libimobiledevice/
echo "DONE!"