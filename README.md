# LeviLauncher iOS

SwiftUI iOS port skeleton. The Xcode project is generated with XcodeGen from `project.yml`.

## Build locally
```
brew install xcodegen
xcodegen generate
open LeviLauncher.xcodeproj
```

## CI
GitHub Actions (`.github/workflows/ios-build.yml`) builds the app on macOS and uploads an unsigned `.ipa` artifact.
