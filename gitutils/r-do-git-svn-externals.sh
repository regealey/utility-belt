#!/bin/bash

#set -e

#toplevel_directory=`git rev-parse --show-cdup)`
#[ -n "$toplevel_directory" ] && { echo "please run from the toplevel directory"; exit 1; }


BASE_EXT=`git svn show-externals | grep "^\/"`
BASE_LIST=`git svn show-externals | grep "^\/" | cut -f1 -d ' '`
HOME=`pwd`
GEXT=$HOME/.git_externals
LOG=/tmp/wks/git_externals.log

rm $LOG

if [ ! -d $GEXT ]; then
echo "creating directory -> "$GEXT
 mkdir -p $GEXT
fi

# do sym links
function do_base_externals {
echo "do_base_externals"

#dest_dir svn_uri
git svn show-externals | grep "^\/" | while read dest svnuri
do
	echo -e "\t\tgit svn clone $svnuri $GEXT$dest"
	log  "\t\tgit svn clone $svnuri $GEXT$dest"
  cd $GEXT
  do_clone $svnuri $GEXT$dest
  do_symlinks $dest
  #check if a nested svn-external
  do_externals $GEXT$dest
done;

echo "======================================>"
echo "That's all folks!!!"
}

function do_clone {
# $1 svnuri, $2 dest
echo "do clone $1 $2"
log "do clone $1 $2"

	log -e "\t\tgit svn clone "$1 $2
  git svn clone $1 $2
}

function do_symlinks {
# params base_dir=$1
	log "ln -s "$GEXT$1 $HOME$1
  ln -s $GEXT$1 $HOME$1
}

function do_externals {
# recursive externals
echo -e "\t\t do_nested_externals -> $1"
log  "\t\t do_nested_externals -> $1"
# $1 directory to check
log "cd $1"
cd $1
git svn show-externals | grep "^\/" | while read dest svnuri
do
	log "nested git svn clone "$svnuri $1$dest
  do_clone $svnuri $1$dest
  #do_symlinks $dest
done;

}
function log {
	echo $1 >> $LOG 
}
#dump_base_list
do_base_externals
