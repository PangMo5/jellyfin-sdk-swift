// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "JellyfinAPI",
    products: [
        .library(name: "JellyfinAPI", targets: ["JellyfinAPI"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.9.0")),
    ],
    targets: [
        .target(name: "JellyfinAPI", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ]
)
