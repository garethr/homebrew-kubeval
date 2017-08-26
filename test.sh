#!/bin/sh

# Very handy package testing script from https://github.com/linuxkit/homebrew-linuxkit

PKGS="$(find Formula -iname "*.rb" -exec sh -c 'FORMULA={}; basename ${FORMULA%.*}' \;)"

for pkg in ${PKGS}; do
	brew install $pkg --verbose
	brew audit $pkg --strict
	brew test $pkg
done
