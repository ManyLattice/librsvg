// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Darwin

let package = Package(
    name: "librsvg",
    products: [
        .library(
            name: "librsvg",
            targets: ["librsvg"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "librsvg",
            dependencies: [],
            path: "Sources/librsvg",
            resources: [
                Resource.copy("Libraries")
            ],
            publicHeadersPath: "HeadersARM",
            cSettings: [
                .headerSearchPath("cairo"),
                .headerSearchPath("gdk-pixbuf"),
                .headerSearchPath("glib"),
                .headerSearchPath("glib-2.0"),
                .headerSearchPath("librsvg")
            ]
        )
    ]
)
