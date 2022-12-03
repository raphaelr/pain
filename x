#!/bin/sh
set -e
cd "$(dirname "$0")"
attr="$1"
branch="$2"

if [ -z "$attr" ]; then
	echo "Usage: $0 attr [branch]"
	exit 1
fi
if [ -z "$branch" ]; then
	branch="$attr"
fi

sed -i "
	s/ref: .*/ref: $branch/
	s/-A .*/-A $attr/
" .github/workflows/x.yml
git commit -a x
git push origin x
