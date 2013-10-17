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
# <id:http://www.zsh.org/mla/users/2013/msg00456.html>
#setopt HIST_REDUCE_BLANKS
