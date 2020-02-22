# Load Composer tools
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# brew path
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
# export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

#WSL - Windows Path
export PATH="/C/Program Files/MySQL/mysql-5.7.23-winx64/bin:$PATH"

# GO
export PATH="/C/Go/bin:$PATH"