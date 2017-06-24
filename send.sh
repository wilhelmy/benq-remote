#!/bin/sh
# See the "COPYING" file distributed along with this script for the MIT/X
# Consortium License.

IP=10.0.0.118
PORT=41794

if [ "$1" ]; then
	if [ -f "$1" ]; then
		echo "00: `< "$1"`" | xxd -r | nc -w 2 $IP $PORT | xxd
		exit 0
	else
		echo >&2 "no such file: $1"
		exit 1
	fi
fi


echo "Enter a filename containing hex data or raw hex data to send it to the projector."
( while true; do
	read -p '-> ' line

	if [ -f "$line" ]; then
		line=`< "$line"`
	fi

	echo "00: $line" | xxd -r
done ) | nc $IP $PORT | xxd
