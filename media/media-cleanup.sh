#!/bin/bash
#removes spaces from mp3, mp4 filenames
rename "s/[\[\]\'\`\(\)\ ]//g" *.mp3
rename "s/[\[\]\'\`\(\)\ ]//g" *.mp4
