#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

TOOLS_DIR="$(cd "$SCRIPT_DIR/.." && pwd)/.tools/tectonic"
TECTONIC="$TOOLS_DIR/tectonic"
TARGET="${1:-main.tex}"
URL="https://github.com/tectonic-typesetting/tectonic/releases/download/tectonic%400.16.8/tectonic-0.16.8-x86_64-unknown-linux-gnu.tar.gz"

if [ ! -x "$TECTONIC" ]; then
  mkdir -p "$TOOLS_DIR"
  TMP_DIR="$(mktemp -d)"
  python3 - <<PY
import urllib.request
urllib.request.urlretrieve("$URL", "$TMP_DIR/tectonic.tar.gz")
PY
  tar -xzf "$TMP_DIR/tectonic.tar.gz" -C "$TOOLS_DIR"
  rm -rf "$TMP_DIR"
fi

"$TECTONIC" -X compile "$TARGET"
