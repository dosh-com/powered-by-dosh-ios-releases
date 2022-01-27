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
            url: "https://poweredby-sdk-release.dosh.com/ios/2.7.1/PoweredByDosh.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "e89ec7ccfb46ba3b1f9b8e943470ab1e2b014a63f4274dbccb01cf204d67a17b"
        ),
        .binaryTarget(
            name: "DoshCardVaulting",
            url: "https://poweredby-sdk-release.dosh.com/ios/2.7.1/DoshCardVaulting.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "344faea78ae0f61bffb02ba1fbed61e042599bcac47b91f542de6a5593f2cfa0"
        )
    ]
)
