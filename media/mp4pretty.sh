#!/bin/bash

#remove spaces from mp4 files in pwd 
for files in *.mp4; do mv "$files" `echo $files | tr ' ' _`; done
