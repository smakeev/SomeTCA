// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SomeTCA",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "SomeTCA", targets: ["SomeTCA"])
    ],
    targets: [
        .target(name: "SomeTCA", path: "SomeTCA"),
        .testTarget(name: "SomeTCATests", dependencies: ["SomeTCA"], path: "Tests")
    ]
)
