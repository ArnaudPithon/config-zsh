# Programmes nécessitant des options particulières pour être exportés.
# KDE4:: --graphicssystem native
# QT4:: export QT_GRAPHICSSYSTEM=native

okular() {
	if [ $DISPLAY = 'localhost:10.0' ];
	then
		/usr/bin/okular --graphicssystem native "$@"
	else
		/usr/bin/okular "$@"
	fi
}

ktorrent() {
	if [ $DISPLAY = 'localhost:10.0' ];
	then
		/usr/bin/ktorrent --graphicssystem native "$@"
	else
		/usr/bin/ktorrent "$@"
	fi
}

konqueror() {
	if [ $DISPLAY = 'localhost:10.0' ];
	then
		/usr/bin/konqueror --graphicssystem native "$@"
	else
		/usr/bin/konqueror "$@"
	fi
}

skrooge() {
	if [ $DISPLAY = 'localhost:10.0' ];
	then
		/usr/bin/skrooge --graphicssystem native "$@"
	else
		/usr/bin/skrooge "$@"
	fi
}
