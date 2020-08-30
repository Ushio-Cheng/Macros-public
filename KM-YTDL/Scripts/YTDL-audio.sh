#!/bin/zsh
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Apple/usr/bin:/Applications/Wireshark.app/Contents/MacOS"
cd ~/Downloads/YTDL
/usr/local/bin/youtube-dl -x --audio-format mp3 $(pbpaste)