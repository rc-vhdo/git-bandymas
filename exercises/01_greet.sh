#!/usr/bin/env bash
# Exercise 1 – Greet 
# Goal: greet the person whose name is given as the first argument. 
#   ./01_greet.sh Ada  -> Hello, Ada! 
#   ./01_greet.sh      -> Hello, stranger!      (no argument) # Hint: "${1:-default}" gives $1, or "default" if $ 1 is empty. 
# TODO: store the first argument (or "stranger") in a variable called name 
# TODO: print the greeting

set -euo pipefail

name="${1:-stranger}"

echo "Hello, $name!"


