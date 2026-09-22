@echo off
setlocal
cd /d "%~dp0"
echo === Siyantek Flutter setup ===
where flutter >nul 2>&1
if errorlevel 1 (
  echo Flutter was not found in PATH.
  echo Install Flutter and restart Command Prompt, then run this file again.
  pause
  exit /b 1
)
flutter --version
if not exist android (
  echo Creating Android project...
  flutter create --platforms=android --org com.siyantek --project-name siyantek .
  if errorlevel 1 exit /b 1
)
echo Getting dependencies...
flutter pub get
if errorlevel 1 exit /b 1
echo Running analyzer...
flutter analyze
if errorlevel 1 (
  echo Analyzer found issues. Fix them before release.
  pause
  exit /b 1
)
echo Setup complete.
pause
