#!/usr/bin/env bash
set -euo pipefail
for port in $(seq 8000 8010); do
  if ! lsof -i TCP:${port} -sTCP:LISTEN >/dev/null 2>&1; then
    exec conda run -n mkdocs mkdocs serve -a 127.0.0.1:${port}
  fi
done
echo "No free port found in 8000-8010" >&2
exit 1
