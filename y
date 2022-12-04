#!/bin/sh
set -e
cd "$(dirname "$0")"
git commit -a -m x --amend --allow-empty
git push origin x -f
