// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MParticle-AppsFlyer-Kit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MParticle-AppsFlyer-Kit",
            targets: ["MParticle-AppsFlyer-Kit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
      .package(name: "mParticle-Apple-SDK", url: "https://github.com/mParticle/mparticle-apple-sdk.git", from: "8.0.0"),
      .package(name: "AppsFlyerLib", url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework.git", from: "6.0.0")
    ],
    targets: [
        .target(
            name: "MParticle-AppsFlyer-Kit",
            dependencies: ["mParticle-Apple-SDK", "AppsFlyerLib"],
            publicHeadersPath: "Sources/MParticle-AppsFlyer-Kit"
        ),
        .testTarget(
            name: "MParticle-AppsFlyer-Kit-Test",
            dependencies: ["MParticle-AppsFlyer-Kit"]),
    ]
)
