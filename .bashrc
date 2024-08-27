# aliases
alias la="ls -a"
alias ll="ls -l"
alias l="ls -alF"
alias grep="grep --color=auto"
alias cx="chmod +x"

# ssh to bing remotes, param is number of machine to connect to
sshbu () {
    ssh "rfanchi1@remote${1}.cs.binghamton.edu"
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
. "$HOME/.cargo/env"
