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
        ),
        .library(
          name: "SPModels",
          targets: ["SPModels"]
        ),
        .library(
          name: "SPRepositories",
          targets: ["SPRepositories"]
        ),
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
            dependencies: [ "SPModels" ],
            path: "./Sources/contract"
        ),
        .target(
            name: "SPModels",
            dependencies: [ ],
            path: "./Sources/models"
        ),
        .target(
            name: "SPRepositories",
            dependencies: [ "SPModels", "SPContract" ],
            path: "./Sources/repositories"
        ),
    ]
)
