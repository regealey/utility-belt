#!/bin/bash
#extract audio from mp4 files in current directory
for i in *.mp4
do
	ffmpeg -i $i -ab 192000 -f mp3 -vn $i.mp3	
done
