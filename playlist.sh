#!/bin/bash
source config.cfg

INDEX=${2:-1}

echo "Downloading playlist from URL $1 starting from index $INDEX"

# Format file name using "Artist - TrackName.mp3" format if such info is available, otherwise use "VideoTitle.mp3" format
yt-dlp \
  --newline \
  --cookies-from-browser chrome \
  --output "$YT_DLP_AUDIO_PATH/%(playlist_title)s/%(artist,title)s%(track& - |)s%(track|)s.%(ext)s" \
  --extract-audio \
  --audio-format mp3 \
  --audio-quality 0 \
  --ignore-config \
  --embed-thumbnail \
  --playlist-start $INDEX \
  "$1"