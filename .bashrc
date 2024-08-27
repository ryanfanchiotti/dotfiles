# aliases
alias la="ls -a"
alias ll="ls -l"
alias l="ls -alF"
alias grep="grep --color=auto"
alias cx="chmod +x"

# ssh to bing remotes, param is number of machine to connect to
sshbu () {
    machine_num=""
    [[ $# -ge 1 ]] && machine_num="$(printf "%02d" "${1}")"
    ssh "rfanchi1@remote${machine_num}.cs.binghamton.edu"
}

# commit all changes in current repo, copy latest hash to clipboard
ga() {
    git add -A || return
    git commit -m "$*" || return
    git push || return
    echo "Latest git hash:"
    git rev-parse HEAD
    git rev-parse HEAD | pbcopy
    echo "Hash copied to clipboard."
}

# source cargo
source "$HOME/.cargo/env"
