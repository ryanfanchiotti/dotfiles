# aliases
alias la="ls -a"
alias ll="ls -l"
alias l="ls -alFh"
alias grep="grep --color=auto"
alias cx="chmod +x"
alias fv="fzf --bind 'enter:become(vim {})'"
alias fb="fzf --bind 'enter:become(bat {})'"
alias umnt="diskutil unmount"

# ssh to bing remotes, param is number of machine to connect to
sshbu() {
    [[ ${1} =~ ^[0-9]*$ ]] || {
        echo "Usage: ${FUNCNAME[0]} <RemoteID: Unsigned | None>"
        return 1
    }
    local machine_num
    machine_num=""
    [[ $# -ge 1 ]] && machine_num="$(printf "%02d" "${1}")"
    ssh "rfanchi1@remote${machine_num}.cs.binghamton.edu"
}

# mount bing remote filesystem in specified directory
mountbu() {
    [[ -d ${1} ]] || {
        echo "Usage: ${FUNCNAME[0]} <Mountpoint: Directory>"
        return 1
    }
    sshfs "rfanchi1@remote.cs.binghamton.edu:" "${1}" && {
        echo "BU remote filesystem mount for directory '${1}' successful"
    }
}

# simple wrapper around fzf cd: fuzzy find directory and go
fcd() {
    eval $(__fzf_cd__)
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

# used by pipx
export PATH="$PATH:/Users/ryanfanchiotti/.local/bin"

