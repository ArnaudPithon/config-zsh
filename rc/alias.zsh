# vim: ft=zsh
# $Id: alias.zsh,v 1.5 2013/09/25 20:02:29 bildoon Exp $

alias cp='cp --interactive'
alias rm='rm --interactive'
alias mv='mv --interactive'

alias ls='ls -v --color=auto --human-readable --group-directories-first'
alias df='df --human-readable'

alias jumpstat='autojump --stat'

# Efface la dernière commande de l'historique.
# ex.: Permet de dissimuler un mot de passe entré par erreur.
#alias hideprev='history -d $(($HISTCMD-2)) && history -d $(($HISTCMD-1))'
# -d n'efface pas l'entrée désignée comme avec Bash.

alias -g G='| grep '

alias here='rep=$(basename $PWD) ; eval $rep=$PWD ; echo ~$rep > /dev/null'

# Permet de sauvegarder les attachements dans le répertoire Desktop.
alias mutt='cd ~/Desktop ; mutt ; cd - > /dev/null'
