Pod::Spec.new do |spec|
    spec.name = 'PoweredByDosh'
    spec.version = '2.5.1'
    spec.summary = 'PoweredByDosh iOS SDK'
    spec.description = <<-DESC
                        PoweredByDosh iOS SDK
                        Documentation available at https://poweredby.dosh.com/doc/.
                        DESC

    spec.homepage = 'https://github.com/dosh-com/powered-by-dosh-ios-releases'
    spec.license = { :type => 'Private', :file => 'PoweredByDosh.xcframework/LICENSE' }
    spec.authors = { 'Dosh Holdings Inc' => 'extservices@dosh.com' }

    spec.source = { :http => 'https://poweredby-sdk-release.dosh.com/ios/2.5.1/PoweredByDosh.zip' }
    spec.ios.deployment_target = '11.0'
    spec.ios.vendored_frameworks = 'PoweredByDosh.xcframework'

    spec.cocoapods_version = '>= 1.10.0'
end
