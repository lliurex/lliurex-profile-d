#!/bin/sh
if [ -n "${LANG}" ]; then
	RC=0
	echo $LANG | grep "valencia" 1>/dev/null || RC=1
	if [ $RC = 0 ]; then
		echo "run_im none" > $HOME/.xinputrc
	fi

	# ubiquity doesn't like variable LC_ALL 

	if [ $UID -gt 999 ]; then

		# this is gonna haunt us sooner or later
		if [ $RC = 0 ]; then
			export LC_CTYPE=ca_ES.UTF-8
		fi
	fi
fi

