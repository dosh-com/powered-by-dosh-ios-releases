# Changelog

Full SDK documentation is [available online](https://poweredby.dosh.com/doc/).

## Release 3.0.1

* Adds privacy manifest files

## Release 3.0.0

* BREAKING - Dosh.initialize(applicationId:) has been renamed to Dosh.initialize(partnerType: PartnerType, applicationId: ApplicationId)
* Adds support for activatable offer types
* Adds support for accessibility controls for ADA compliance
* Adds support for future engagement constructs
* Enable new client side UI feature - enable background color to be dynamic and the ability to be grouped by colors

## Release 2.8.0

* BREAKING - Xcode 13.0 or later required
* BREAKING - Updated minimum iOS deployment target to iOS 13.0
* Support for future engagement constructs.
* Updates to the optional DoshCardVaulting module to meet compliance requirements.

## Release 2.7.1

* Adds a workaround for SDK version compatibilty with the "manage app version and build number" setting introduced in Xcode 13. When this setting is utilized, Xcode overwrites embedded framework version information with the app's version. This workaround introduces a namespaced version so that the SDK is able to track its version separately from the app, even when the "manage app version and build number" setting is used.
* Fixes a bug that could cause an online offer's web view to fail to launch.
* Fixes memory leaks.

## Release 2.7.0

* Adds support for Card Vaulting through the optional `DoshCardVaulting` module.
* Removes unused device-related analytic event properties. See the [Device Info](https://poweredby.dosh.com/doc/data.html) section on the Analytics documentation page for more info. 

## Release 2.6.1

* Removes access of the Advertising Identifier. 

## Release 2.6.0

* Adds support for presenting the SDK via an SDK deep link.
* Adds support for presenting the SDK via an app deep link from our Marketing API.
* Adds a `DoshErrorDelegate` protocol that can be implemented to receive error events from the SDK for debugging or analytic purposes.

## Release 2.5.1

* Fixes `error: couldn't IRGen expression` that occurred when interacting with the debugger in some integration configurations ([Swift SR-12783](https://bugs.swift.org/browse/SR-12783)).

## Release 2.5.0

* Adds support for displaying a server-driven locked state in the offer feed.
* Adds support for displaying program terms in the offer feed.
* Adds support for server-driven customization of section titles on the activity screen.
* Removes CLLocationCoordinate2D & UIView.ContentMode extensions which were being exposed through the SDK's swiftmodule.
* Adds architecture support for the arm64 simulator (on M1 Macs). If you were previously setting `EXCLUDED_ARCHS="arm64"` in your build settings, this is no longer necessary.

## Release 2.4.1

* Fixes a layout bug that caused longer offer details descriptions to be cut off before the end of the text.

## Release 2.4

* Adds optional `rewardsSummaryInfo` property that can be used to display informational text on the account summary screen.
* Now generating the xcframework using Xcode 12 and the iOS 14 SDK.

## Release 2.3

* Adds support for additional online offer content
* Adds support for installation through Swift Package Manager by specifying a package source of `https://github.com/dosh-com/powered-by-dosh-ios-releases.git`

## Release 2.2.1

* Updates `copy-framework-symbols.sh` script to support embedding debug symbols for CocoaPods installations when compiling with Xcode 12.
    * For manual installations, Xcode 12 supports automatically embedding debug symbols that are included with XCFrameworks, but as of CocoaPods 1.10.0.rc.1, CocoaPods does not automatically embed XCFramework debug symbols ([CocoaPods #10111](https://github.com/CocoaPods/CocoaPods/issues/10111)).

## Release 2.2

* Adds support to launch the SDK directly to the account summary view
    * Pass in `.accountSummary` for the landing screen parameter on the `presentRewards` method

## Release 2.1

* Adds support for an account summary view detailing a user's lifetime cashback and transactions. 
    * This view can be enabled on Dosh's backend on a per-marketplace basis.
    * Set the `userDisplayName` and `userProfileImage` properties to display the user’s name and avatar in the account summary view.
* Adds optional `rewardsProgramName` property that will be used as the title of the rewards and account summary screens.
* Adds optional `userLocation` property that may be used to specify the user’s current location. When provided, this location will be used to provide more precise location-based offers.

## Release 2.0

* **Breaking change** - The `userIdentifier` no longer needs to be passed explicitly in the client SDK. As a result, the `Dosh.userIdentifier` property has been removed, and the `userId` parameter has been removed from the `userAuthorization` closure.
* **Breaking change** - `DoshLogoStyle` has been renamed to `DoshImageStyle`.
* Add support for customizing the SDK's presentation animation through a new, optional `presentationAnimation` parameter on the `dosh.presentRewards(from:)` function. Presentation will continue to default to a style that matches a navigation controller's push animation (`PresentationAnimation.navigationPush`), but you may pass in `PresentationAnimation.horizontalModal` to present from the side without any transformation being applied to the presenting view.
* Add protection against duplicate calls to present the SDK.

## Release 1.3

* Improvements to support for crash symbolication:
    * Moves symbolication directories (`dSYMs` and `BCSymbolMaps`) into `PoweredByDosh.xcframework`. 
    * When building with **Xcode 11**, a custom build script may be added to automate the process of including symbolication in the containing app archive.
        ```
        bash "${PROJECT_DIR}/Frameworks/PoweredByDosh.xcframework/copy-framework-symbols.sh"
        ```
    * When building with **Xcode 12**, this change will enable automatic support for symbolication info being pulled into the containing app archive.

## Release 1.2

* Adds search functionality.
* Fixes race condition in iOS SDK that could cause crashes.

## Release 1.1

Adds additional theming options for the SDK. Consumers can now customize the display of logos and brand banners.

    ``` swift
    struct CustomTheme: PoweredByDoshTheme {
        ...
        let logoStyle: DoshLogoStyle = .circular
        let brandDetailsHeaderStyle: DoshBrandDetailsHeaderStyle = .rectangular
    }
    ```

## Release 1.0

Initial release of iOS and Android SDKs.
