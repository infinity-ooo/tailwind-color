// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TailwindColor",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .watchOS(.v8),
        .tvOS(.v15)
    ],
    products: [
        .library(
            name: "TailwindColor",
            targets: ["TailwindColor"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TailwindColor",
            dependencies: []),
    ]
)
