#!/bin/bash

sudo apt -o Apt::Get::Assume-Yes=true remove libreoffice* thunderbird && sudo apt -o Apt::Get::Assume-Yes=true autoremove

sudo apt update && sudo apt -o Apt::Get::Assume-Yes=true dist-upgrade

sudo apt -o Apt::Get::Assume-Yes=true install deluge ffmpeg g++ gcc gimp git krita libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev libxml2-dev libxslt1-dev make mesa-vulkan-drivers obs-studio openjdk-8-jre openjdk-17-jre openjdk-21-jre python3-dev python3-pip retroarch vlc vulkan-tools wget zlib1g-dev

wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash

cd ~

git clone https://github.com/libretro/FBNeo

cd ~/FBNeo

make j3 -C src/burner/libretro generate-files

make j3 -C src/burner/libretro

cd ~/FBNeo/src/burner/libretro

wget https://archive.org/download/fbnarcade-fullnonmerged/arcade/sfa3.zip

cd ~
