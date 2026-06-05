# AppLovin MAX - iOS Liftoff (Vungle) Mediation Adapter

The AppLovin MAX Vungle mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- AppLovin MAX iOS SDK 13.0.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Liftoff
   ```
3. Choose **Up to Next Major Version** and pin to the latest adapter version (e.g. `7.7.3.0`).
4. Add the `AppLovinMediationVungleAdapter` product to your app target.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Liftoff.git",
        from: "7.7.3.0"
    )
]
```

## Included dependencies

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`VungleAdsSDK`](https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://developers.applovin.com/en/max/ios/overview/integration)
