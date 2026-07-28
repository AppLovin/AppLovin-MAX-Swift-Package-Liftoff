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
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.6")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/vungle-adapter/AppLovinMediationVungleAdapter-7.7.6.0.zip",
            checksum: "701dc52e5782ed273af0ebcfdfa4aad6f2d449d54fa3a9a4be25e3fbfc3bf638"
        )
    ]
)
