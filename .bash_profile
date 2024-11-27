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
PS1='\e[1;32m[$? $(uname) \u@\h \w] \e[0m'

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

