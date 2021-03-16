// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PoweredByDosh",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PoweredByDosh",
            targets: ["PoweredByDosh"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "PoweredByDosh",
            url: "https://poweredby-sdk-release.dosh.com/ios/2.5.1/PoweredByDosh.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "e6fef18a5da6dcadb9382396b31895e033d61784fc8dc79a3afcb88ccafb2cf6"
        )
    ]
)
