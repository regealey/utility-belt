for i in *.mp3; do mv "$i" `echo $i | tr ' ' '_'`; done 
for i in *.[Mm][Pp]3; do mv "$i" `echo $i | tr '[A-Z]' '[a-z]'`; done 
for i in *.MP3; do mv "$i" "`basename "$i" .MP3`.mp3"; done
