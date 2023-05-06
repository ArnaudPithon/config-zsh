. $ZDOTDIR/rc/functions

git() {
	_ssh-key /usr/bin/git "$@"
}

alias gst='command git status --short --branch'
alias gadd='command git add'
alias gcmt='command git commit'
alias gdif='command git diff'
alias glog='command git log'
alias gbr='command git branch'
alias gck='command git checkout'
alias gvid='vim "+VCSVimDiff"'
