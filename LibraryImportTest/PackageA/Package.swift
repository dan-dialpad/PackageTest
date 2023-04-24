// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageA",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LibraryX",
            targets: ["LibraryX"]),
        .library(
            name: "LibraryY",
            targets: ["LibraryY"])
    ],
    dependencies: [
        .package(
            // WARNING: **DO NOT UPDATE** UNTIL THIS ISSUE IS CONFIRMED FIXED
            // push-notifications-swift 4.0.0 requires Nimble 9.0.0<10.0.0
            url: "https://github.com/Quick/Nimble.git",
            exact: "9.2.1"
        ),
        .package(
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            exact: "10.4.0"
        ),
        .package(url: "https://github.com/onevcat/Kingfisher.git", exact: "7.4.1"),
        .package(
            url: "https://github.com/krzyzanowskim/CryptoSwift.git",
            exact: "1.6.0"
        )
    ],
    targets: [
        .target(
            name: "LibraryX",
            dependencies: [
                .product(name: "CryptoSwift", package: "CryptoSwift"),
            ]),
        .target(
            name: "LibraryY",
            dependencies: [
                .product(name: "Nimble", package: "Nimble"),
                .product(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk"),
                .product(name: "Kingfisher", package: "Kingfisher")
            ]),
    ]
)
