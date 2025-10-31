# pi5fresh
Personal Pi 5 setup script cause I'm lazy and don't want to visit every bookmark after a fresh install.

Works with Ubuntu & PiOS.

Installs SDL2 environment, flatpak, ffmpeg, Gimp, Krita, qBittorrent, RetroArch and VLC before cloning into and building the FBNeo Libretro core.

To execute from terminal use:
 ```
wget -qO- https://raw.githubusercontent.com/shadeacademia/pi5fresh/refs/heads/main/setup.sh | bash
 ```

* Performance tweaks(force PCIe Gen 3 + 20% CPU/GPU overclock):
  ```
  echo -e "dtparam=pciex1_gen=3\narm_freq=2880\ngpu_freq=960" | sudo tee -a /boot/firmware/config.txt > /dev/null
  ```

* Dont forget to add the Flathub repository before rebooting:
  ```
  flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
  ```
