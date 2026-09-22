@echo off
setlocal
cd /d "%~dp0"
if not exist android (
  echo Android project is missing. Run setup_windows.bat first.
  pause
  exit /b 1
)
flutter pub get
if errorlevel 1 exit /b 1
flutter analyze
if errorlevel 1 exit /b 1
echo Building release AAB...
flutter build appbundle --release
if errorlevel 1 exit /b 1
echo.
echo AAB created at:
echo %CD%\build\app\outputs\bundle\release\app-release.aab
pause
