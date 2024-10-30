// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Bank",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "BankAccount", targets: ["BankAccount"]),
    ],
    targets: [
        .target(
            name: "BankAccount",
            path: "Sources"
        ),
        .testTarget(
            name: "BankAccountTests",
            dependencies: ["BankAccount"],
            path: "Tests"
        ),
    ]
)
