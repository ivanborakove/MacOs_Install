#!/bin/bash

sudo apt update -y && apt upgrade -y && apt dist-upgrade -y

sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf tweak gnome-tweaks plank -y

echo "\n Extract Themes \n"

cd Themes\

for arq in *.tar.xz; do

	tar xf $arq;

done

rm *.tar.xz

cp -R * /usr/share/themes/

echo "\n Extract Finish \n"


cd ../Icons/

echo "\n Extract Icons \n"

for arq in *.tar.xz; do

	tar xf $arq;

done

rm *.tar.xz

for arq in *.zip; do

	unzip -qq "$arq";

done

rm *.zip

cp -R * /usr/share/icons/

echo "\n Extract Finish \n"
