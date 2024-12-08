# silence macos zsh propaganda
export BASH_SILENCE_DEPRECATION_WARNING=1

# allow colors to show on terminal
export CLICOLOR=1

# change colors for ls, sets directories and special files to bold
export LSCOLORS="ExFxCxDxBxEgEdAbAgAcAd"

# set editor to updated vim
export EDITOR="/opt/homebrew/bin/vim"

# append to history file instead of overwriting it
shopt -s histappend

# stop hashing file locations (can result in file not found errors when switching executable location)
shopt -u checkhash

# append to history file after command
PROMPT_COMMAND="history -a"

# set time format for 'history' command
HISTTIMEFORMAT='%m/%d/%y %T '

# set max size for bash history file
HISTSIZE=32767

# prompt: error code, kernel, username, short hostname, directory
get_error_code() {
    local error_code="$?"
    if [[ "$error_code" == 0 ]]; then
        echo -ne ""
    else
        echo -ne "$error_code "
    fi
}
PS1='\[\033[1;32m\][$(get_error_code)$(uname) \u@\h \w] \[\033[0m\]'

# set homebrew's environment variables
eval "$(/opt/homebrew/bin/brew shellenv)"

# load fzf bash integration
eval "$(fzf --bash)"

# source aliases and functions
source ~/.bashrc

# source cargo
source "$HOME/.cargo/env"

# for pipx
export PATH="$PATH:/Users/ryanfanchiotti/.local/bin"

