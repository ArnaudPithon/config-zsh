# vim: ft=zsh

setopt extendedglob correct interactivecomments

export EMAIL="arno <apithon@free.fr>"
export EDITOR="vim"
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
