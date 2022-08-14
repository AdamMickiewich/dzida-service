#!/bin/bash
set -euo pipefail

REPO=VolyaTeam/dzida-service
if ! command -v curl > /dev/null; then
    apt update -yq
    apt install -yq curl
fi

URL=$(curl -s "https://api.github.com/repos/${REPO}/releases/latest" | grep ".*.deb" | grep -Eo 'https://[^\"]*')

WORKDIR=$(mktemp -d)
trap "rm -rf '${WORKDIR}'" EXIT

cd "${WORKDIR}"
curl -Lo package.deb "${URL}"
apt install -yq ./package.deb