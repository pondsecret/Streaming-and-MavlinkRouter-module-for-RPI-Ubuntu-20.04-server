#!/bin/bash
cd ~/
echo Install Gst-Rtsp-Server && echo 12345678 | sudo -S -y apt-get install libgstrtspserver-1.0-dev gstreamer1.0-rtsp
echo Install Git && echo 12345678 | sudo -S -y apt-get install git
echo Clone Gst-Rtsp-Server Repo from github && git clone https://github.com/GStreamer/gst-rtsp-server.git

