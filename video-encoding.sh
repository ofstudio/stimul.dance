#!/bin/sh
ffmpeg  -i stimul.site.hq.mp4 \
-f ogg -vcodec libtheora -b:v 1000k -r 24 -s 800x360 \
-acodec libvorbis  -ar 44100 -ab 128k -ac 2 \
-y stimul.site.ogg

ffmpeg  -i stimul.site.hq.mp4 \
-f webm -vcodec libvpx -b:v 1000k -r 24 -s 800x360 \
-y stimul.site.webm


