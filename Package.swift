// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "gatekeeper-example",
    products: [
        .library(name: "gatekeeper-example", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/nodes-vapor/gatekeeper.git", .branch("feature/migrate-to-vapor-3")),
    ],
    targets: [
        .target(name: "App", dependencies: ["Gatekeeper", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

