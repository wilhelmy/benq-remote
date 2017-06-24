#!/bin/sh
# See the "COPYING" file distributed along with this script for the MIT/X
# Consortium License.

echo "Enter a filename containing hex data or raw hex data to send it to the projector."
( while true; do
	read -p '-> ' line

	if [ -f "$line" ]; then
		line=`< "$line"`
	fi

	echo "00: $line" | xxd -r
done ) | nc 10.0.0.118 41794 | xxd
