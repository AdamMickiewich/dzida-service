#!/bin/sh

fpm --input-type dir --output-type deb --depends curl --architecture all -C service/ -n "$(basename `git rev-parse --show-toplevel`)" --after-install scripts/after-install.sh --version "$(git describe --tags)"
