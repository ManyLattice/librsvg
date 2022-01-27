// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Darwin

let package = Package(
    name: "librsvg",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "librsvg",
            targets: ["librsvg"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "librsvg",
            dependencies: [],
            path: "Sources/librsvg",
            resources: [
                .process("Libraries/ARM")
            ],
            publicHeadersPath: "HeadersARM",
            cSettings: [
                .headerSearchPath("../..")
            ]
        )
    ]
)
