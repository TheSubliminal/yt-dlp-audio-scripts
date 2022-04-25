# yt-dlp-audio-scripts
Scripts to assist Youtube audio ripping

## Prerequisites
Install `yt-dlp` as it is an underlying tool which is used for downloading Youtube videos.

Refer to [Installation section](https://github.com/yt-dlp/yt-dlp#installation) for detailed info on how to install the tool.

By default all the downloads are stored at `$HOME/Music/yt-dlp-audio-rips`. You can easilty change the target directory by modifying the `YT_DLP_AUDIO_PATH` variable inside the `config.cfg` file
## Usage
```bash
$ cd /scripts/directory
$ ./playlist "https://www.youtube.com/playlist?list=playlist-id" [starting-index]
```

```bash
$ cd /scripts/directory
$ ./single "https://www.youtube.com/watch?v=video-id"
```
