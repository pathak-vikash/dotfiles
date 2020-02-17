#!/bin/sh

echo "Setting up your PC..."

# Update Ubuntu
apt-get update

#  Check to see if Xclip is installed if not install it
if [ $(dpkg-query -W -f='${Status}' xclip 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  echo 'xclip not installed .... installing now!'
  sudo apt install xclip -y;
fi

# Install composer
apt-get install composer

# Install global Composer packages
# /usr/local/bin/composer global require laravel/installer laravel/spark-installer laravel/valet

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Sites

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc