#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
SRC="$ROOT/chatgpt"
OUT="$ROOT/dist"
ZIP="$OUT/tesemble-chatgpt-plugin.zip"
mkdir -p "$OUT"
rm -f "$ZIP"
(
  cd "$SRC"
  zip -r "$ZIP" plugin.json mcp.json skills assets -x '*.DS_Store'
)
echo "Wrote $ZIP"
if ! grep -q '"demo_recording_url"' "$SRC/plugin.json"; then
  echo "Warning: review.demo_recording_url is not set in chatgpt/plugin.json; OpenAI requires it for MCP review." >&2
fi
