alias la="ls -a"
alias ll="ls -l"
alias l="ls -alF"
alias grep="grep --color=auto"
alias sshbu="ssh rfanchi1@remote.cs.binghamton.edu"
alias cx="chmod +x"
function ga() {
    git add -A || return
    git commit -m "$*" || return
    git push || return
    echo "Latest git hash:"
    git rev-parse HEAD
    git rev-parse HEAD | pbcopy
    echo "Hash copied to clipboard."
}
