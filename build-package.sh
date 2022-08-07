#!/bin/sh
set -eu

tag=$(git describe --tags || echo "0.0.0")
version=${tag%%-*}
dependencies="curl"

for type in deb "$@"; do
    fpm --input-type dir --output-type "${type}" --depends "${dependencies}" --architecture all -C package/ -n "$(basename `git rev-parse --show-toplevel`)" --version "${version}"
done