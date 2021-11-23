#!/bin/bash
if pgrep restic >/dev/null; then
  progress="$(grep -o "\d*.\d*%" /tmp/restic_progress | tail -1)"
  echo "Backup: ${progress:-"..."}"
else
  echo
fi
