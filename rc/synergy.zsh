. $ZDOTDIR/rc/functions

alias synergys='synergys -c ~/.config/synergy.conf -d ERROR'

synergy() {
	serveur="$1"
	pkill synergyc
	pgrep -f "24800:localhost:24800" ||
		ssh -f ${serveur} -N -L 24800:localhost:24800
	synergyc --debug FATAL --display :0 localhost
}
