# Shortcuts

#copy / paste for ubuntu - native os
# alias pbcopy='xclip -selection clipboard'
# alias pbpaste='xclip -selection clipboard -o'

#copy / paste for ubuntu - wsl
alias pbcopy='clip.exe'

alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -ahlF --color --group-directories-first"
weather() { curl -4 wttr.in/${1:-antwerp} }
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias zbundle="antibody bundle < $DOTFILES/zsh_plugins.txt > $DOTFILES/zsh_plugins.sh"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"
alias lara="sites && cd laravel/"

# Laravel
alias a="php artisan"
alias ams="php artisan migrate:fresh --seed"

# PHP
alias php73="/home/linuxbrew/.linuxbrew/Cellar/php@7.3/7.3.15/bin/php"
alias php72="/home/linuxbrew/.linuxbrew/Cellar/php@7.2/7.2.28/bin/php"
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# Python
alias python3="/home/linuxbrew/.linuxbrew/Cellar/python/3.7.6_1/bin/python3"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run watch"

# Docker
alias dcompose="docker-compose"
#alias dstop="docker stop $(docker ps -a -q)"
#alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
#alias dpurgeimages="docker rmi $(docker images -q)"
#dbuild() { docker build -t=$1 .; }
#dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Git
alias commit="git add . && git commit -m"
alias gcommit="git add . && git commit"
alias gpush="git push -u origin"
alias amend="git add . && git commit --amend --no-edit"
alias wip="commit wip"
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias resolve="git add . && git commit --no-edit"
alias gl="git log --oneline --decorate --color"
alias nuke="git clean -df && git reset --hard"
alias unstage="git restore --staged ."


# WSL - Windows Softwares

alias ngrok="$DEVTOOLS/ngrok.exe"
alias gomigrate="$DEVTOOLS/go-migrate.exe"
alias protoc="$DEVTOOLS/protoc-3.7.0-rc-2-win64/bin/protoc.exe"
alias fastoredis="$DEVTOOLS/fastoredis-1.24.0-x86_64-b7483d5/FastoRedis.exe"

alias python="/C/Python27/python.exe"
alias pythonw="/C/Python27/pythonw.exe"

alias 7zG="/C/Program Files/7-Zip/7zG.exe"
alias mosquotto="/C/Program Files/mosquitto/mosquitto.exe"
alias subl="/C/Program Files/Sublime Text 3/subl.exe"