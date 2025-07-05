#!/usr/bin/bash

cd ~/opd
mkdir lab1
cd lab1

mkdir stoutland8 swinub5 torterra4
touch dragonite3 machamp7 sentret2

echo "satk=10 sdef=10 spd=8" >> dragonite3
echo -e "Способности Focus Guts No\nGuard" >> machamp7
echo "Живет Forest Grassland" >> sentret2

cd stoutland8
mkdir mantine furret kingdra
touch luxray ledyba
echo -e "Развитые способности\nGuts" >> luxray
echo "Развитые способности Rattled" >> ledyba
cd ..

cd swinub5
mkdir cacturne
touch oddish sawsbuck dragonite
echo -e "Тип диеты\nPhototroph" >> oddish
echo "satk=6 sdef=7 spd=10" >> sawsbuck
echo -e "weigth=463.0\nheight=87.0 atk=13 def=10" >> dragonite
cd ..

cd torterra4
mkdir crobat donphan snivy
touch hitmontop nidoranM
echo -e "Тип диеты\nOmnivore" >> hitmontop
echo "Живет Grassland" >> nidoranM
cd ..
