# vim: ft=zsh

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
end="%f%k"

# Met un valeur un shell lancé depuis un programme.
# TODO: Afficher plusieurs niveaux de sub-shell,
# comme vim -> shell -> ranger -> shell
[ $RANGER_LEVEL ] && subshell="%F{yellow}(ranger)%f"
[ $VIM ] && subshell="%F{yellow}(vim)%f"

PS1="${color_barre}┌─${color_cadre}[%f${user}@${host}:${cpath}${color_cadre}]${color_barre}─────────╼${subshell}
${color_barre}└╱%f${exit_status}%#${end} "

#RPS1="${date}${end}"
