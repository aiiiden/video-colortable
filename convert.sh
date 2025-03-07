#!/usr/bin/env bash
ffmpeg -y -i input.mp4 -i palette.png -filter_complex "[0:v][1:v] paletteuse" -c:v libx264 -pix_fmt yuv420p output.mp4 