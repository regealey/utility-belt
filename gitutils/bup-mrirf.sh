#!/bin/bash

# backup mrirf working directory
TIMESTAMP=`date +%Y%m%d.%H%M`
srcDir=/home/itrxe01/workspace/gitsvn/irf
devWebName='mrirf-'$TIMESTAMP'.git'
destDir=/home/itrxe01/archives/
#/home/itrxe01/workspace/attic/
destWeb=$destDir$devWebName
# mrirf
git clone --mirror $srcDir $destWeb
cd $destDir
tar czf $devWebName'.tar.gz' $devWebName
rm -fr $destWeb

