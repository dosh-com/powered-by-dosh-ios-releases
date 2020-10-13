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
            url: "https://poweredby-sdk-release.dosh.com/ios/2.3.0/PoweredByDosh.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "1407c717606d58d2c9f5c3ca4afabdf1d717144b2cea9916f157f31928cb9e42"
        )
    ]
)
