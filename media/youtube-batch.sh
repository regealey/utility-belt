#!/bin/bash
#program takes a file and read 1 line at a time.  Downloaded a youtube via the url or name
#usage : youtube-batch <filename which contains a list of videos>

while read line
do
#echo $line;
youtube-dl  -o "%(title)s.%(ext)s" $line
done < $1
