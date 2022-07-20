#!/bin/bash
set -eu
curl "https://github.com/arriven/db1000n/blob/main/install.sh" | bash
exec ./db1000n