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
            url: "https://poweredby-sdk-release.dosh.com/ios/3.0.1/PoweredByDosh.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "53e6e63a825540e7bd0f1fcc1ad4029f6f12a051c212d310d7ef1b6bb2a76235"
        ),
        .binaryTarget(
            name: "DoshCardVaulting",
            url: "https://poweredby-sdk-release.dosh.com/ios/3.0.1/DoshCardVaulting.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "f9ba9112bd50674168c9523fb53b4f56e7665834f15ce6d33f83e836da197e7a"
        )
    ]
)
