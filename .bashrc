alias bashprofile="emacs ~/.bash_profile"
alias bashrc="emacs ~/.bashrc"
alias la="ls -a"
alias ll="la -l"
# access binghamton remote pcs
alias sshbu="ssh rfanchi1@remote.cs.binghamton.edu"
# commit all edited files and copy latest hash to clipboard 
function ga() {
    {	
        git add -A
    } || {
        return
    }
    git commit -m "$*"
    {	
        git push
    } || {
        return
    }
    echo "Latest git hash:" > /dev/tty
    git rev-parse HEAD
    git rev-parse HEAD | pbcopy
    echo "Hash copied to clipboard." > /dev/tty
}
