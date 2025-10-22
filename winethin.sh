#!/bin/bash

# Check if no arguments were provided
if [ $# -eq 0 ]; then
    #echo "Error: No arguments provided"
    echo "Usage: wine_thin <executable>"
    exit 1
fi

EXECUTABLE=$1
GAME=$1


DIRECTORY=$(basename "$PWD")
clean=${DIRECTORY// /}
#echo $DIRECTORY
#echo $clean

ABSOLUTE_PATH=$(pwd)
WINE_THIN_DIRECTORY=$ABSOLUTE_PATH/.$clean
#echo $ABSOLUTE_PATH
#echo $WINE_THIN_DIRECTORY



printf "WINEPREFIX=$WINE_THIN_DIRECTORY\n\n"

# Run Executable
DRI_PRIME=0 WINEPREFIX="$WINE_THIN_DIRECTORY" wine "$EXECUTABLE"
