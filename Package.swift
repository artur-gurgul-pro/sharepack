// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "Sharepack",
    platforms: [
       .iOS(.v16)
    ],
    products: [
        .library(
          name: "SPUtils",
          targets: ["SPUtils"]
        ),
        .library(
          name: "SPContract",
          targets: ["SPContract"]
        )
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "SPUtils",
            dependencies: [ ],
            path: "./Sources/utils"
        ),
        .target(
            name: "SPContract",
            dependencies: [ ],
            path: "./Sources/contract"
        ),
    ]
)
