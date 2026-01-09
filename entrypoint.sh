#!/bin/sh
LOCK_FILE=/data/mmmm.lock

if [ -f "$LOCK_FILE" ]; then
  echo "Removing stale lock file"
  rm -f "$LOCK_FILE"
fi

exec "$@"
