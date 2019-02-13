# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Local bin directories before anything else
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Add my custom home bin directory
export PATH="$HOME/bin:$PATH"

# use mac version of ssh for git to support keychains
export GIT_SSH=/usr/bin/ssh

# expose esp-idf path
export PATH=$PATH:$HOME/esp/xtensa-esp32-elf/bin
export IDF_PATH=$HOME/esp/esp-idf
