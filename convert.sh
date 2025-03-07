#!/usr/bin/env bash

INPUT="$1"
PALETTE="$2"
OUTPUT="$3"

if [ -z "$INPUT" ] || [ -z "$PALETTE" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 <input.mp4> <palette.png> <output.mp4>"
  exit 1
fi

# FFmpeg 변환
ffmpeg -y \
  -i "$INPUT" \
  -i "$PALETTE" \
  -filter_complex "[0:v][1:v] paletteuse" \
  -c:v libx264 \
  -pix_fmt yuv420p \
  -crf 28 \
  -preset slower \
  "$OUTPUT"
