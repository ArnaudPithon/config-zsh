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
