# vim: ft=zsh

export ZDOTDIR="$HOME/.config/zsh"

setopt extendedglob correct interactivecomments

export EMAIL="bildoon <bildoon@icarios.net>"
export EDITOR="nvim"
export BROWSER="elinks"
export PAGER="less"
export TERMCMD=${TERMINAL}

export RANDFILE="$XDG_CACHE_HOME/rnd"
[ -f "$RANDFILE" ] || md5sum /var/log/* > "$RANDFILE"

# Charactères non alphanumeriques traités comme constituant d'un mot.
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# La lecture des fichiers rc doit avoir lieu aprés la définition des variables.
# Notament bindkey.zsh dépend de la variable $EDITOR.
for file in $ZDOTDIR/rc/*.zsh; do
	source $file
done
