// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "package-name", // repository package name externally; lower-kebob-case
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LibraryProductName", // The umbrella library; UpperCamelCase
            targets: ["ModuleName", "SecondModuleName"]), // the modules you're building (since it is a library (above), vs executable)
            // Standard Library is umbrella, with UIKit and Foundation as modules.
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ModuleName", // Must match targets above.
            dependencies: []),
        .target(
            name: "SecondModuleName",
            dependencies: []),
        .testTarget(
            name: "ModuleNameTests",
            dependencies: ["ModuleName"]),
        .testTarget(
            name: "SecondModuleNameTests",
            dependencies: ["SecondModuleName"]),
    ]
)
