# Powered By Dosh SDK for iOS

📚 Integration documentation is [available online](https://poweredby.dosh.com/doc/mobile-sdk.html) (login required). 

Use of the Powered By Dosh SDK requires a commercial agreement. Visit our website to [learn more](https://www.dosh.com/financial-services).

## Supported installation methods

The Powered By Dosh SDK is provided as a precompiled xcframework. 

### CocoaPods

CocoaPods support is available by including a direct link to the podspec file for a specific version of the SDK. Replace `<version>` in the URL with the SDK version you would like to use.

```
pod 'PoweredByDosh', :podspec => 'https://raw.githubusercontent.com/dosh-com/powered-by-dosh-ios-releases/<version>/PoweredByDosh.podspec'
```

We plan to list the SDK in the centralized CocoaPods spec repo in a subsequent release.

### Direct download

Direct download is available from the following URL. Replace `<version>` in the URL with the SDK version you would like to download.

```
https://poweredby-sdk-release.dosh.com/ios/<version>/PoweredByDosh.zip
```

## Currently unsupported installation methods

- **Carthage** - We plan to support integration via Carthage after support for binary xcframeworks is available. See the following threads for more information:
    - https://github.com/Carthage/Carthage/issues/2799
    - https://github.com/Carthage/Carthage/pull/2881
    - https://github.com/Carthage/Carthage/pull/2801
- **Swift Package Manager** - Support for precompiled binary xcframeworks was introduced with Xcode 12. We will be adding support for SwiftPM in a subsequent release.
