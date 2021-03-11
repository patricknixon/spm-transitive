// swift-tools-version:5.2

import PackageDescription

let package = Package(name: "MySwiftLibrary",
                      products: [.library(name: "MySwiftLibrary", targets: ["MySwiftLibrary"])],
                      targets: [.target(name: "MySwiftLibrary")])
