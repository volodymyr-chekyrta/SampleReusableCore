// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleReusableCore",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Core",
            type: .dynamic,
            targets: ["Core"]
        ),
    ],
    dependencies: [
        // SPM does not support mixing of branch-based and unversioned dependencies
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Core", dependencies: [],
            path: "Core/Sources/Core"
        ),
        .testTarget(
            name: "CoreTests", dependencies: ["Core"],
            path: "Core/Tests/CoreTests"
        ),
    ]
)
