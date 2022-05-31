#!/bin/bash

cd ~/
echo UDP Sink to 192.168.192.108:5001 && gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-raw, witdh=640, height=480, framerate=30/1 ! decodebin ! videoconvert ! video/x-raw, format=NV12 ! videoconvert ! x264enc tune=zerolatency bitrate=1500 ! rtph264pay name=pay0 config-interval=-1 pt=96 ! udpsink host=192.168.192.108 port=5001 sync=false -e