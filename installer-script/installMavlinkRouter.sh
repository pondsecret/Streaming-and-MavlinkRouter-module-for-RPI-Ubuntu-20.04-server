#!/bin/bash 

cd ~/
echo Cloning... Mavlink Router && git clone https://github.com/mavlink-router/mavlink-router.git 
cd mavlink-router/ && git submodule update --init --recursive
echo Build Packages Mavlink Router && meson setup build . && ninja -C build && sudo ninja -C build install

