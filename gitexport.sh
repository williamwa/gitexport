i#!/bin/sh
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 DIR TAG" >&2
	exit 1
fi
rm -rf "~/tmp/$1/"
git archive --format=tar --prefix="$1/" HEAD $(git diff --name-only $2) | (cd ~/tmp/ && tar xf -)
