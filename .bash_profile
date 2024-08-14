export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLOR=1
export LSCOLORS="ExFxCxDxBxEgEdAbAgAcAd"
shopt -s histappend
PROMPT_COMMAND="history -a;PS1_CMD1=$(uname -s);$PROMPT_COMMAND"
HISTTIMEFORMAT='%m/%d/%y %T '
PS1='\[\e[38;5;196;1m\](${?})\[\e[0m\] \[\e[38;5;214;1m\]${PS1_CMD1}\[\e[0m\] \[\e[38;5;150;1m\]\h\[\e[38;5;196m\] \[\e[38;5;141m\]\w\[\e[0m\] '
eval "$(/opt/homebrew/bin/brew shellenv)"
source ~/.bashrc
