#!/bin/bash

sudo apt -o Apt::Get::Assume-Yes=true remove libreoffice* thunderbird && sudo apt -o Apt::Get::Assume-Yes=true autoremove

sudo apt update && sudo apt -o Apt::Get::Assume-Yes=true dist-upgrade

wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash

sudo apt -o Apt::Get::Assume-Yes=true install ffmpeg g++ gcc gimp krita libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev libxml2-dev libxslt1-dev make obs-studio openjdk-8-jre openjdk-17-jre openjdk-21-jre python3-dev python3-pip retroarch vlc zlib1g-dev

cd ~

git clone https://github.com/libretro/FBNeo

cd ~/FBNeo

make -C src/burner/libretro generate-files

make -C src/burner/libretro

cd ~/FBNeo/src/burner/libretro

wget https://archive.org/download/fbnarcade-fullnonmerged/arcade/sfa3.zip

cd ~
