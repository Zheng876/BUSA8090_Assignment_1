#!/bin/bash
oldest_timestamp=-1
oldest_filename=""
for filename in "$@"
do
	timestamp=$(stat -c %Y ${filename})
	if [ $timestamp -lt $oldest_timestamp -o $oldest_timestamp -lt 0 ]
	then
		oldest_timestamp=$timestamp
		oldest_filename="$filename"
	fi
done
echo "${oldest_filename}"

