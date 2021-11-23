#!/bin/bash
if pgrep restic >/dev/null; then
  progress="$(grep -ao "[0-9]*.[0-9]*%" /tmp/restic_progress | tail -1)"
  echo "Backup: ${progress:-"..."}"
else
  echo
fi
