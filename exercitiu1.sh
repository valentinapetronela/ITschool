#!/bin/bash
#Faceți un script ce așteaptă (la nesfarsit) după un fisier pe disk sa fie creat (ce fișier doriti). După ce fișierul a fost create scriptul afișează un mesaj și iese cu succes.
#Bonus: Modificați scriptul să nu aștepte la nesfarsit ci maxim 1 minut. Dar daca fisierul este create mai devreme de 1 minut scriptul trebuie sa se termine mai devreme.

fisier="/tmp/file.txt"
timetowait=60
elapsed=0

while [[ ! -f $fisier ]]; do
	echo "fisierul $fisier nu exista"
	sleep 1
	elapsed=$((elapsed + 1))
	if [ $elapsed -ge $timetowait ]; then
		echo "fisierul nu a fost gasit in $elapsed secunde"
		exit 1
	fi
done
echo "fisierul a fost creat in $elapsed secunde"


