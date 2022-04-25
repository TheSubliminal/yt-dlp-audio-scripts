#!/bin/bash
source config.cfg

echo "Downloading audio from URL $1"

# Format file name using "Artist - TrackName.mp3" format if such info is available, otherwise use "VideoTitle.mp3" format
yt-dlp \
  --newline \
  --cookies-from-browser chrome \
  --output "$YT_DLP_AUDIO_PATH/%(artist,title)s%(track& - |)s%(track|)s.%(ext)s" \
  --extract-audio \
  --audio-format mp3 \
  --audio-quality 0 \
  --ignore-config \
  --embed-thumbnail \
  "$1"
