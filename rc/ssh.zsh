. $ZDOTDIR/rc/functions

ssh() {
	_ssh-key /usr/bin/ssh "$@"
}

scp() {
	_ssh-key /usr/bin/scp "$@"
}

skey() {
	_ssh-key
}
