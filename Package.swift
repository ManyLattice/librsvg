// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "librsvg",
    products: [
        .library(
            name: "librsvg",
            targets: ["librsvg"]),
    ],
    targets: [
        .target(
            name: "librsvg",
            path: "Sources",
            resources: [
                .copy("librsvg/lib"),
                .copy("librsvg/headers")
            ])
    ]
)
