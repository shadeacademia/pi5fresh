#!/bin/bash

sudo apt update && sudo apt -o Apt::Get::Assume-Yes=true dist-upgrade

sudo apt -o Apt::Get::Assume-Yes=true install cmake curl ffmpeg flatpak g++ gcc gimp git glmark2 krita libcurl4-openssl-dev libfontconfig1-dev libgl1-mesa-dev libglew-dev libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev libxml2-dev libxslt1-dev make mesa-vulkan-drivers obs-studio python3-dev python3-pip qbittorrent retroarch vlc vulkan-tools wget zlib1g-dev

cd ~

git clone https://github.com/libretro/FBNeo

cd ~/FBNeo

make -j3 -C src/burner/libretro generate-files

make -j3 -C src/burner/libretro

cd ~
