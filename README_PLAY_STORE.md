# Siyantek — Play Store release checklist

## What is already prepared
- Flutter app source
- Arabic / French / English UI with RTL support
- Local persistence with SharedPreferences
- Android build workflow
- Windows setup/build scripts

## What must be done on a Windows machine
1. Install Flutter SDK and Android Studio.
2. Open this project folder in Command Prompt.
3. Run `setup_windows.bat`.
4. Run the app on a real Android phone and test all flows.
5. Create a release/upload keystore with `generate_keystore.bat`.
6. Configure `key.properties` and release signing in `android/app/build.gradle` before the final production build.
7. Run `build_release.bat`.
8. Upload `build/app/outputs/bundle/release/app-release.aab` to Google Play Console.

## Important Google Play requirement (current in 2026)
New Android apps submitted to Google Play from 31 August 2026 must target Android 16 / API 36 or higher. After `flutter create`, verify the generated Android project uses target API 36 or higher with the installed Flutter/Android tooling.

## Never publish secrets
Do not commit:
- `android/app/siyantek-upload-keystore.jks`
- `android/key.properties`
- keystore passwords

Keep secure offline backups of the keystore. Losing the upload key can complicate future updates.
