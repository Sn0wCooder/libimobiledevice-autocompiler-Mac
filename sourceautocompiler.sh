#!/bin/bash

echo "Script created by Leonardo Alfreducci to autocompile libimobiledevice for Mac (latest version)."
##cd source/
./cleanup.sh
./brew.sh
./autobuild.sh
sudo gem install terminal-notifier
terminal-notifier -message "Done." -title "libimobiledevice source compiled" -appIcon ./l.png
#open source/
echo "DONE!