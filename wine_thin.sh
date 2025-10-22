#!/bin/bash

DIRECTORY=$(basename "$PWD")
clean=${DIRECTORY// /}
echo $DIRECTORY
echo $clean
ABSOLUTE_PATH=$(pwd)/.$clean
echo $ABSOLUTE_PATH

GAME=$(find . -maxdepth 1 -name "*.exe" -type f -printf "%s %p\n" | sort -nr | head -n1 | cut -d' ' -f2-)

echo $GAME
glxinfo | grep OpenGL 
echo DRI_PRIME=0 WINEPREFIX='"'$ABSOLUTE_PATH'"' wine '"'$GAME'"'
DRI_PRIME=0 WINEPREFIX="$ABSOLUTE_PATH" wine "$GAME"
