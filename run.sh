#!/bin/zsh
# Swing Plane Lab — serve locally and open in the browser
cd "$(dirname "$0")"
PORT=8794
if ! lsof -i :$PORT >/dev/null 2>&1; then
  python3 -m http.server $PORT >/dev/null 2>&1 &
  sleep 1
fi
open "http://localhost:$PORT/index.html"
