#!/bin/sh

# For now, let's make sure sbin is in path

LLXPATHS="/usr/local/sbin /usr/sbin /sbin /usr/games"

for P in $LLXPATHS; do
	echo $PATH | grep $P 1>/dev/null 2>/dev/null || PATH=$P:$PATH
done

export PATH=$PATH


