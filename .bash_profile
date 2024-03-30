export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLOR=1
PS1='\[\e[38;5;219m\]┌─\$\[\e[0m\] \[\e[38;5;149m\]\w\n\[\e[38;5;219m\]└─>\[\e[0m\] '
eval "$(/opt/homebrew/bin/brew shellenv)"
source ~/.bashrc
