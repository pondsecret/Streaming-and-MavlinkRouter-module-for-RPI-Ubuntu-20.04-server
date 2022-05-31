#!/bin/bash 

cd ~/
echo Install required packages 
echo 12345678 | sudo -S apt install -y ninja-build pkg-config gcc g++ systemd 
echo Install meson && echo 12345678 | sudo -S pip3 install meson
