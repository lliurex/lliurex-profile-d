#!/bin/sh

PATH_TO_WINE_PREFIX=""
NAMEDIR="Documents"

if [ -e "$HOME/.config/user-dirs.created" ]; then
	. "$HOME/.config/user-dirs.created"
	PATH_TO_WINE_PREFIX=$TOKEN_DOCUMENTS
else
	PATH_TO_WINE_PREFIX="$(xdg_translator "$NAMEDIR")"
fi

if [ -z $PATH_TO_WINE_PREFIX ] ; then
	PATH_TO_WINE_PREFIX=$NAMEDIR
fi

export WINEPREFIX=$HOME/$PATH_TO_WINE_PREFIX/.wine


