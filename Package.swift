// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationVungleAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationVungleAdapter",
            targets: ["AppLovinMediationVungleAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.5")
    ],
    targets: [
        .target(
            name: "AppLovinMediationVungleAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationVungleAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationVungleAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/vungle-adapter/AppLovinMediationVungleAdapter-7.7.5.0.zip",
            checksum: "e07db7802ea601a64fde3b1d776b74c74cb42d843ce0adaace0e1bd2dc980ea8"
        )
    ]
)
