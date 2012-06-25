#!/bin/bash
rename 's/VOB/vob/g' *.VOB
LIST=$(ls *.vob)
echo $LIST
cat $LIST > master.vob


