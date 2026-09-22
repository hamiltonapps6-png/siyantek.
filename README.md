# Siyantek — Flutter

Flutter rebuild of the Siyantek vehicle-maintenance tracker, keeping the original visual identity and core behavior.

## Included
- Arabic / French / English with RTL support
- Vehicle details and odometer update
- Maintenance history and recent activity
- Add maintenance: oil, brakes, tires, inspection, battery, other
- Cost, notes and next-service mileage
- Offline persistence with SharedPreferences
- Responsive mobile layout
- GitHub Actions workflow that generates Android scaffolding and builds a release AAB

## Build locally
```bash
flutter create --platforms=android --org com.siyantek --project-name siyantek .
flutter pub get
flutter analyze
flutter build appbundle --release
```

The AAB will be at `build/app/outputs/bundle/release/app-release.aab`.
