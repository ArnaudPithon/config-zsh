# vim: ft=sh

# Résoud un conflit entre les raccourcis rTorrent et le controle de flux
# standard du terminal (Ctrl-Q, Ctrl-S).
# Vérifier avec `stty -a`.
stty stop undef
stty start undef
