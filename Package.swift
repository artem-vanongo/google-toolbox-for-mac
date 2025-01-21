// swift-tools-version: 6.0.0
import PackageDescription

let package = Package(
    name: "GoogleToolboxForMac",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "GoogleToolboxForMac",
            targets: ["GoogleToolboxForMac"]
        )
    ],
    targets: [
        .target(
            name: "GoogleToolboxForMac",
            path: "Foundation",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("../"),
                .headerSearchPath("../UnitTesting"),
                .headerSearchPath("../DebugUtils"),
                .unsafeFlags(["-fno-objc-arc"])
            ]
        )
    ]
)
