#!/usr/bin/env sh
set -eu
cd "$(dirname "$0")"
mkdir -p build/classes
find src -type f -name '*.java' | sort > build/sources.list
javac -encoding UTF-8 -d build/classes @build/sources.list
printf '\nBuild complete. Launch with: sh run.sh\n'
