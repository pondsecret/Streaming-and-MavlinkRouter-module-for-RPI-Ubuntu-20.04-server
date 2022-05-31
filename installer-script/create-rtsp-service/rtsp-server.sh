#!/bin/bash

sleep 15
cd ~/gst-rtsp/gst-rtsp-server/examples && ./test-launch " v4l2src device=/dev/video0 ! video/x-raw, witdh=640, height=480, framerate=30/1 ! decodebin ! videoconvert ! video/x-raw, format=NV12 ! videoconvert ! x264enc tune=zerolatency bitrate=1500 ! rtph264pay name=pay0 config-interval=-1 pt=96 " -p 8556