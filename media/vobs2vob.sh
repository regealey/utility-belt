#!/bin/bash
#create master vob file.. prep for transcoding
rename 's/VOB/vob/g' *.VOB
LIST=$(ls *.vob)
echo $LIST
cat $LIST > master.vob


