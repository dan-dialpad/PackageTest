// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "PackageB",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "LibraryZ",
            targets: ["LibraryZ"]),
    ],
    dependencies: [
        .package(path: "../PackageA"),
    ],
    targets: [
        .target(
            name: "LibraryZ",
            dependencies: [.product(name: "LibraryY", package: "PackageA"),]),
    ]
)
