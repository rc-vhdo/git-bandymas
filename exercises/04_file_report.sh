#!/usr/bin/env bash
# Exercise 4 – File report
# Goal: count files and sub-directories in a folder (default: current folder).
#   ./04_file_report.sh some_dir  ->  Files: 3
#                                     Directories: 1
#   Folder doesn't exist -> "Error: ..." on stderr, exit 1
# Hints: for item in "$dir"/*; do ... done
#        [[ -f $item ]] = regular file, [[ -d $item ]] = directory
set -euo pipefail

# TODO: set dir to $1, or . if no argument

dir="${1:-.}"
files=0
dirs=0

# TODO: check that dir is a directory, otherwise error + exit 1

if [[ ! -d "$dir" ]]; then
	echo "Error: not a directory">&2
	exit 1
fi

# TODO: loop over items and count files and directories

for item in "$dir"/*; do
	if [[ -f "$item" ]]; then
		files=$((files + 1))
	elif [[ -d "$item" ]]; then
		dirs=$((dirs + 1))
	fi
done
# TODO: print the two result lines

echo "Files: $files"
echo "Directories: $dirs"
