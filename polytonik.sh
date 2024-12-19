#!/usr/bin/env sh

script_directory=$(dirname "$0")

command awk -f "$script_directory/polytonik.awk" "$script_directory/polytonik.txt" "$@"
