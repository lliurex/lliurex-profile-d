#!/bin/sh

PATH_TO_WINE_PREFIX=""
NAMEDIR="Documents"


PATH_TO_WINE_PREFIX="$(xdg_translator "$NAMEDIR")"

if [ -z $PATH_TO_WINE_PREFIX ] ; then
	PATH_TO_WINE_PREFIX=$NAMEDIR
fi

export WINEPREFIX=$HOME/$PATH_TO_WINE_PREFIX/.wine


