#!/bin/bash

cd ~/gst-rtsp-server/examples && gcc test-launch.c -o test-launch $(pkg-config --cflags --libs gstreamer-rtsp-server-1.0 gstreamer-1.0)