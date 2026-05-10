#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../app"
flutter run -t lib/main.dart -d iPhone
