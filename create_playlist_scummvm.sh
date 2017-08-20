#!/bin/bash

#
# Libretro playlist builder
#
# Usage:
# scan.sh "Files path" "Core" "Core name" "Playlist filename" ["Playlists path"]
#
# Example:
#./scan.sh "/storage/roms/arcade/*.zip" "/tmp/cores/fba_libretro.so" "Arcade (FB Alpha - SVN)" "FB Alpha - Arcade Games.lpl" "/storage/playlists/"
#

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
CA=0
CS=0

echo " Scaning \"$1\" for \"$3\" ROMs and adding to \"$5$4\"... "

for dir in `find $1 -type d`; do
for fullpath in $dir/*.scummvm; do
touch "$5$4"


filename=$(basename "$fullpath")
rom_folder="/storage/roms/nas/scummvm"/$(basename $(dirname "$fullpath"))/$filename

if [ `cat "$5$4" | grep -c "$filename"` -lt 1 ] && [ "${filename%.*}" != "gamelist"  ] && [ "${filename%.*}" != "*"  ]; then
	CA=$(($CA+1))
	echo "$CA - Adding $filename"
	#echo $fullpath >> "$5$4"
	echo $rom_folder >> "$5$4"
	echo "${filename%.*}" >> "$5$4"
	echo $2 >> "$5$4"
	echo $3 >> "$5$4"
	echo "DETECT" >> "$5$4"
	echo $4 >> "$5$4"
else
	CS=$(($CS+1))
	echo "$CS - Skipping $4"
fi
done
done

echo " Added $CA and skipped $CS \"$3\" ROMs out of $(($CA+$CS)) scanned files to \"$4\" "

IFS=$SAVEIFS
