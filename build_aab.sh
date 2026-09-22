#!/usr/bin/env bash
set -e
flutter pub get
flutter analyze
flutter build appbundle --release
