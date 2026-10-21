#!/usr/bin/env sh
set -eu
PROJECT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
if [ ! -f "$PROJECT_DIR/build/classes/blahblah/hGui.class" ]; then
    sh "$PROJECT_DIR/build.sh"
fi
# Deliberately keep the caller's working directory: existing relative save files stay discoverable.
exec java -Xmx1g -cp "$PROJECT_DIR/build/classes" blahblah.hGui "$@"
