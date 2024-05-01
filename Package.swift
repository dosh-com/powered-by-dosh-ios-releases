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
            url: "https://poweredby-sdk-release.dosh.com/ios/3.0.2/PoweredByDosh.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "e8958bb2fddbe5fb6b93e575ec8bb993c6757a0d7c039f91cb999d41093d6c94"
        ),
        .binaryTarget(
            name: "DoshCardVaulting",
            url: "https://poweredby-sdk-release.dosh.com/ios/3.0.2/DoshCardVaulting.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "b3bb91f63ff0c067c817a2a2c4757491b6ab90ea13e905fac82b073fc7b66fe4"
        )
    ]
)
