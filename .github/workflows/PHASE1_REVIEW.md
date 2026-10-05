# Siyantek – Phase 1 Review

## Changes applied
- Improved numeric input parsing for French/European decimal notation (`1 234,5` / `1.234,5`).
- Removed the misleading hard-coded `+240 km` dashboard indicator.
- Added dynamic document language and RTL direction when the user switches language.
- Improved mobile viewport handling and touch behavior.
- Increased input font size to reduce mobile browser zoom behavior.
- Replaced the generic Activity logo with a vehicle-oriented CarFront mark.
- Added missing accessible labels to modal close controls.
- Updated displayed app version to `1.0.1`.
- Removed the unused Gemini API-key setup instruction from README because this project currently does not use a Gemini API dependency.
- Storage writes now include an internal storage version marker while keeping the existing storage key for compatibility.

## Verification
The source was inspected and modified, but a production build was **not** claimed as verified because dependency installation did not complete in the available environment.
