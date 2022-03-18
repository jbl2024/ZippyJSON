// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ZippyJSON",
    platforms: [
        .iOS(.v11),
        .tvOS(.v10),
        .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "ZippyJSON",
            targets: ["ZippyJSON"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jbl2024/JJLISO8601DateFormatter", .upToNextMajor(from: "0.1.2")),
        .package(url: "https://github.com/jbl2024/ZippyJSONCFamily", .revision("160a9633e2fe6bfe26c4971876f0f29fec1e91c3")),
    ],
    targets: [
        .target(
            name: "ZippyJSON",
            dependencies: ["ZippyJSONCFamily", "JJLISO8601DateFormatter"]),
    ]
)
