# bindkey -v (mode vi) implicite par la définition de la variable $EDITOR
# (voir zshzle(1)).

# touches fléchées (normales et pavé numérique)
bindkey '\e[A'  up-line-or-history
bindkey '\e[B'  down-line-or-history
bindkey '\e[C'  forward-char
bindkey '\e[D'  backward-char
bindkey '\eOA'  up-line-or-history
bindkey '\eOB'  down-line-or-history
bindkey '\eOC'  forward-char
bindkey '\eOD'  backward-char

bindkey '\C-A'  beginning-of-line
bindkey '\C-E'  end-of-line
bindkey '\C-D'  delete-char

# Suppr
bindkey '\e[3~' delete-char
# touches Home et End
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
# Recherche contextuelle dans l'historique avec PageUp et PageDown
bindkey '\e[5~' history-search-backward
bindkey '\e[6~' history-search-forward

bindkey -M vicmd '\e[1~' beginning-of-line
bindkey -M vicmd '\e[4~' end-of-line
bindkey -M vicmd '\e[5~' history-search-backward
bindkey -M vicmd '\e[6~' history-search-forward

bindkey -M vicmd 'c' vi-backward-char
bindkey -M vicmd 'r' vi-forward-char
bindkey -M vicmd 't' down-line-or-history
bindkey -M vicmd 's' up-line-or-history

bindkey -M vicmd 'j' vi-find-next-char-skip
bindkey -M vicmd 'J' vi-find-prev-char-skip

bindkey -M vicmd 'h' vi-change
bindkey -M vicmd 'H' vi-change-eol
bindkey -M vicmd 'K' vi-change-whole-line
bindkey -M vicmd 'k' vi-substitute
bindkey -M vicmd 'l' vi-replace-chars
bindkey -M vicmd 'L' vi-replace

# Force la détection des mots tels que définis par $WORDCHARS.
bindkey -M viins '\C-W' backward-kill-word

bindkey -M viins '\t' expand-or-complete-prefix
bindkey -M viins '\e' vi-cmd-mode

