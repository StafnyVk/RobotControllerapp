#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
dart run robot_simulator:server "$@"
