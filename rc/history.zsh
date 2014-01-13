# vim: ft=zsh

HISTFILE=~/.cache/zsh_history
SAVEHIST=1000
HISTSIZE=$SAVEHIST
export HISTFILE SAVEHIST HISTSIZE

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
# Correctif temporaire tant que ce bug est présent
# http://www.zsh.org/mla/users/2013/msg00456.html
# <url:man:zshoptions#tn=HIST_REDUCE_BLANKS>
#if [[ `uname -m` == 'x86_64' ]]; then
#	setopt NO_HIST_REDUCE_BLANKS
#else
#	setopt HIST_REDUCE_BLANKS
#fi
# Semble être devenu inutile depuis la dernière mise à jour.
# 2013-01-13 zsh 5.0.5
