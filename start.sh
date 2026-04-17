#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

python3 server.py &
SERVER_PID=$!

sleep 0.5
xdg-open "http://127.0.0.1:18791" 2>/dev/null || echo "Open http://127.0.0.1:18791 in your browser"

wait "$SERVER_PID"
