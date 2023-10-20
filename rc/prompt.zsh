# vim: ft=zsh

# Permet la récupération d'informations du Version Control Systems
autoload -Uz vcs_info
# N'active que la détection de Git
zstyle ':vcs_info:*' enable git

color_barre="%242F"
case $USER in
	root)
		color_cadre="%F{red}"
		;;
	pkgusr)
		color_cadre="%F{cyan}"
		;;
	bildoon)
		color_cadre="$color_barre"
		;;
	*)
		color_cadre="%F{green}"
		;;
esac

user="%F{default}%n%f"
host="%B%m%b"
cpath="%F{blue}%~%f"
date="%F{yellow}%T%f"
exit_status="%(?..%F{red})"
git_color="%F{green}"
end="%f%k"

# Met un valeur un shell lancé depuis un programme.
# TODO: Afficher plusieurs niveaux de sub-shell,
# comme vim -> shell -> ranger -> shell
[ $RANGER_LEVEL ] && subshell="%F{yellow}(ranger)%f"
[ $VIM ] && subshell="%F{yellow}(vim)%f"

# Git infos
zstyle ':vcs_info:git:*' formats " ⑂ %8.8i %b %m%u%c"
zstyle ':vcs_info:git:*' actionformats " ⑂ %r/%S %b (%a) %m%u%c"
zstyle ':vcs_info:git:*' check-for-staged-changes true
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' ✗'
zstyle ':vcs_info:*' stagedstr ' 🗸'

precmd() {
    vcs_info

    PS1="${color_barre}┌─${color_cadre}[%f${user}@${host}:${cpath}${color_cadre}]${color_barre}─────────╼${subshell}
${color_barre}└╱%f${exit_status}%#${end} "

    #RPS1="${date}${end}"
    RPS1="$git_color${vcs_info_msg_0_}${end}"
}
