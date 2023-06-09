# vim: ft=zsh

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

alias grep='grep --color=auto'
alias -g G='| grep '

alias here='rep=$(basename $PWD) ; eval $rep=$PWD ; echo ~$rep > /dev/null'

# Permet de sauvegarder les attachements dans le répertoire Desktop.
alias mutt='cd ~/Desktop ; mutt ; cd - > /dev/null'

alias ccp='/usr/bin/rsync -hh --times --recursive --links --progress'
alias cmv='/usr/bin/rsync -hh --times --recursive --links --progress --remove-source-files'

alias mp3gain='/usr/bin/mp3gain -k -s i -t -p'

alias free='LANG=C free'

alias pwid="pwsafe -Epq clef.ssh.id@$HOST | xclip -i -loop 1"

alias vi='nvim'
alias nvi='nvim'
alias view='nvim -R'
alias vimdiff='nvim -d'
