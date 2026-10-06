#!/usr/bin/env bash
# Helper: package the themes/ directory into dist/.
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p dist
tar -czf dist/autottheme-bundle.tar.gz themes/ metadata.json
echo "bundle written to dist/autottheme-bundle.tar.gz"
