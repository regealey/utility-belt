#!/bin/bash
vobs=/mnt/dvd/VIDEO_TS/
for isofn in *.iso
do
echo "starting " $isofn
fullvob=$(echo $isofn|cut -d'.' -f1).vob
echo $fullvob
sudo mount -o loop $isofn /mnt/dvd
file_prefix=$(ls -alh $vobs  | grep 1.0G | tail -1 | sed 's/\(.*\)\(VTS.[0-9][1-9]\)/\2/g' | cut -c 1-7)
echo $file_prefix
fns=$(ls $vobs$file_prefix*.VOB | grep "$file_prefix[1-9].VOB" )
echo $fns
echo "copying files to /tmp/vobs"
#mkdir /tmp/vobs
for i in $fns
do
echo "copying " $i

cp $i /tmp/vobs/.
done
#cat files cat  $fns > 
LIST=$(ls /tmp/vobs/*.VOB)
cat $LIST > /tmp/$fullvob

mv /tmp/$fullvob /home/regealey/workspace/auto-todo/vobs/.
echo "completed " $isofn
sudo umount /mnt/dvd
mv $isofn /home/regealey/workspace/auto-todo/.
rm -fdr /tmp/vobs/*
done
