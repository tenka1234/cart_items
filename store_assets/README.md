# Store & Marketing Assets

This folder is for external marketing, Google Play listing screenshots, design mockups, and promotional graphics.

### Why this folder does NOT increase APK / AAB size:
1. Flutter only bundles assets explicitly declared under `flutter: -> assets:` in `pubspec.yaml`.
2. This folder is outside `assets/`, so Gradle and Flutter build tools completely ignore it when packaging the `.apk` or `.aab`.
3. It is tracked by Git, so your screenshots and promotional graphics remain safely backed up in your GitHub repository without adding any megabytes to the installed app.
