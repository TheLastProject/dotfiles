#!/bin/sh
echo "Backup: $(grep -o "\d.\d*%" /tmp/restic_progress | tail -1)"
