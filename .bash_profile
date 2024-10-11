# silence macos zsh propaganda
export BASH_SILENCE_DEPRECATION_WARNING=1

# allow colors to show on terminal
export CLICOLOR=1

# change colors for ls, sets directories and special files to bold
export LSCOLORS="ExFxCxDxBxEgEdAbAgAcAd"

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

# custom prompt: last error code, kernel, computer name, current directory
PS1='\[\e[38;5;196;1m\](${?})\[\e[0m\] \[\e[38;5;214;1m\]$(uname -s)\[\e[0m\] \[\e[38;5;150;1m\]\h\[\e[38;5;196m\] \[\e[38;5;141m\]\w\[\e[0m\] '

# set homebrew's environment variables
eval "$(/opt/homebrew/bin/brew shellenv)"

# source aliases and functions
source ~/.bashrc

# source cargo
source "$HOME/.cargo/env"

# for pipx
export PATH="$PATH:/Users/ryanfanchiotti/.local/bin"

