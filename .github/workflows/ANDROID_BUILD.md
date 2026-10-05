# Siyantek Android Build

This project wraps the Siyantek React/Vite app in a lightweight Android WebView shell.

## GitHub Actions

Push the repository to GitHub, then open **Actions → Build Siyantek Android APK → Run workflow**.
The workflow builds the web app, packages it into Android assets, and uploads `app-debug.apk` as an artifact.

The debug APK is for testing on your own Android phone. A signed release AAB/APK is a later publishing step.
