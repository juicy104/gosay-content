#!/usr/bin/env sh

set -eu

root_dir="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
content_dir="$root_dir/content"

if [ ! -d "$content_dir" ]; then
  echo "content directory not found: $content_dir" >&2
  exit 1
fi

status=0

for required in "$content_dir/phrases" "$content_dir/phrases-index.md"; do
  if [ ! -e "$required" ]; then
    echo "missing required path: $required" >&2
    status=1
  fi
done

if [ "$status" -eq 0 ]; then
  echo "content validation passed"
fi

exit "$status"
