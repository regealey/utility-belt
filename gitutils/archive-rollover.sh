#!/bin/bash
# script to only keep 5 archive files
srcDir="/home/itrxe01/archives"
maxSize="3"
echo $srcDir
file_cnt=`ls $srcDir/*.gz | wc -l`
while [ $file_cnt -gt $maxSize ]
do
	echo $file_cnt
	
	if (( "$file_cnt" > $maxSize )); then 
	fn=`ls $srcDir/*.gz |sort -r | tail -1`
	echo "deleting file: "$fn
	rm $fn
	else
	 echo 'no maintenace required '$file_cnt
	fi
file_cnt=`ls $srcDir/*.gz | wc -l`
done
