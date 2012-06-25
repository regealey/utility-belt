#!/bin/bash
cat ~/Music/myFavs.m3u |grep -vw 'EXTINF' > 1.txt
