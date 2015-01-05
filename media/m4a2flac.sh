#!/bin/bash
# converts all *.m4a in the current directory to *.flac
for file in *.m4a; do avconv -i "$file" -f flac "`basename "$file" .m4a`.flac"; done
