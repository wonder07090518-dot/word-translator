// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "WordBubble",
    platforms: [
        .macOS("15.2")
    ],
    products: [
        .executable(name: "WordBubble", targets: ["WordBubble"])
    ],
    targets: [
        .executableTarget(
            name: "WordBubble",
            path: "Sources/WordBubble"
        )
    ]
)
