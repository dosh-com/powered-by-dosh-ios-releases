# Changelog

Full SDK documentation is [available online](https://poweredby.dosh.com/doc/).

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
