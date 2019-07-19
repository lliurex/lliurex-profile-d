#!/bin/sh
if [ -n "${LANG}" ]; then
	RC=0
	echo $LANG | grep "valencia" 1>/dev/null || RC=1
	if [ $RC = 0 ]; then
		echo "run_im none" > $HOME/.xinputrc
	fi

	# Code above should be good enough for valencian locale to work properly
	# ubiquity doesn't like this variable

	if [ $UID -gt 999 ]; then

		if [ $RC = 0 ]; then
			export LC_ALL=ca_ES.UTF-8
		fi
	fi
fi

