#!/usr/bin/env bash
set -euo pipefail

# Serve the Canvas cafe demo locally without installing any dependencies.

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}/Canvas 7 Files"

PORT="${PORT:-8000}"

echo "Serving Canvas cafe demo from: ${PWD}"
echo "Open: http://localhost:${PORT}/demo-cafe.html"

python3 -m http.server "${PORT}"
