#!/bin/sh
LOCK_FILE=/app/data/mmmm.lock

if [ -f "$LOCK_FILE" ]; then
  echo "Removing stale lock file"
  rm -f "$LOCK_FILE"
fi

exec "$@"
