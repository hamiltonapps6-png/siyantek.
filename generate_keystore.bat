@echo off
setlocal
cd /d "%~dp0"
if not exist android mkdir android
if not exist android\app mkdir android\app
set KEYSTORE=android\app\siyantek-upload-keystore.jks
if exist "%KEYSTORE%" (
  echo Keystore already exists: %KEYSTORE%
  pause
  exit /b 0
)
where keytool >nul 2>&1
if errorlevel 1 (
  echo keytool was not found. Install/use a JDK and ensure JAVA_HOME/bin is in PATH.
  pause
  exit /b 1
)
echo Create a strong password when prompted. Do NOT send it to anyone.
keytool -genkeypair -v -keystore "%KEYSTORE%" -alias siyantek-upload -keyalg RSA -keysize 2048 -validity 10000
if errorlevel 1 exit /b 1
echo.
echo IMPORTANT: Keep android\app\siyantek-upload-keystore.jks in a secure backup.
echo Do not upload the keystore or passwords to GitHub.
pause
