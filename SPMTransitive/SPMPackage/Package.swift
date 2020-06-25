// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SPMPackage",
    products: [
        .library(
            name: "SPMLibrary",
            targets: ["SPMModule"]),
    ],
    targets: [
        .target(
            name: "SPMModule")
    ]
)
