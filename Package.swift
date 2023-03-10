// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OiwiUI",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "OiwiWidgets", targets: ["OiwiWidgets"]),
        .library(name: "OiwiInterfaces", targets: ["OiwiInterfaces"]),
        .library(name: "Oiwi-UIKit", targets: ["Oiwi-UIKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Quick/Quick.git", from: "6.1.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "11.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "OiwiWidgets",
            dependencies: [
                "OiwiInterfaces",
                .targetItem(name: "Oiwi-UIKit", condition: .when(platforms: [.macCatalyst])),
                .targetItem(name: "Oiwi-UIKit", condition: .when(platforms: [.iOS])),
            ]),
        .target(name: "OiwiInterfaces", dependencies: []),
        .target(name: "Oiwi-UIKit", dependencies: ["OiwiInterfaces"]),
        //.testTarget(
        //    name: "OiwiWidgetsTests",
        //    dependencies: [
        //        "OiwiWidgets",
        //        "Quick",
        //         "Nimble",
        //    ]),
    ]
)

