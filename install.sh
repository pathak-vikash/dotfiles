#!/bin/sh

echo "Setting up your PC..."

# install docker 
if test ! $(which docker); then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    rm get-docker.sh
fi

#install docker-compose
if test ! $(which docker-compose); then
    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
fi

#install brew
# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install global Composer packages
# /usr/local/bin/composer global require laravel/installer laravel/spark-installer laravel/valet

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
if [ -d $HOME/Sites ] 
then
    echo "Projects Directory ~/Sites already exists." 
else
    mkdir $HOME/Sites
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc


# WSL - Mount Drives
echo "Mounting Drives."
sudo ln -s /mnt/c /C
sudo ln -s /mnt/d /D
sudo ln -s /mnt/e /E