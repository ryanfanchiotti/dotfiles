export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLOR=1
PS1='\[\e[38;5;196;1m\]\w\[\e[0m\] \[\e[30;1m\]>\[\e[0m\] \[\e[38;5;214;1m\]\\$\[\e[0m\] '
eval "$(/opt/homebrew/bin/brew shellenv)"
source ~/.bashrc
