import PackageDescription

let package = Package(
    name: "SomeTCA",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "SomeTCA", targets: ["SomeTCA"])
    ],
    targets: [
        .target(name: "SomeTCA", path: "Sources"),
        .testTarget(name: "SomeTCATests", dependencies: ["SomeTCA"], path: "Tests")
    ]
)
