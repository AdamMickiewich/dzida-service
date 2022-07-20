#!/bin/bash
set -eu
curl "https://raw.githubusercontent.com/arriven/db1000n/main/install.sh" | bash
exec ./db1000n