#!/usr/bin/env bash
# Helper: sanity-check that the repo has the expected structure.
set -euo pipefail

cd "$(dirname "$0")/.."

required=(install Makefile README.md metadata.json themes/plasma/metadata.json)
missing=0
for f in "${required[@]}"; do
  if [[ ! -e "$f" ]]; then
    echo "missing: $f" >&2
    missing=1
  fi
done

[[ "$missing" -eq 0 ]] && echo "layout OK"
exit "$missing"
