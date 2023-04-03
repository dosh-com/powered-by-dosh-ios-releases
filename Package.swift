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
            targets: ["PoweredByDosh"]
        ),
        .library(
            name: "DoshCardVaulting",
            targets: ["DoshCardVaulting"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "PoweredByDosh",
            url: "https://poweredby-sdk-release.dosh.com/ios/3.0.0/PoweredByDosh.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "a868e63ec5b5d89cce2685a6de5b6328d14588a5a901d0d1f3f0083b8851546b"
        ),
        .binaryTarget(
            name: "DoshCardVaulting",
            url: "https://poweredby-sdk-release.dosh.com/ios/3.0.0/DoshCardVaulting.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "3a40a136f5c0129d1e44a52951367635269604ec1c6b6aab79f5db57127f4a31"
        )
    ]
)
