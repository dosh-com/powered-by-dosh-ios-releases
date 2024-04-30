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
            checksum: "59d85accc5f9e6e8133c3e71c85fb9bf550d670e5bc8fe1af36af177ea5f37a2"
        ),
        .binaryTarget(
            name: "DoshCardVaulting",
            url: "https://poweredby-sdk-release.dosh.com/ios/3.0.2/DoshCardVaulting.zip",
            // To compute the checksum for the zip file, run:
            //    $ swift package compute-checksum <path/to/xcframework.zip>
            checksum: "39c324ab293ab21478dad7838b15ff17807b253bf1938a992bc676144e8550e9"
        )
    ]
)
