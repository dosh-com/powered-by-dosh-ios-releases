Pod::Spec.new do |spec|
    spec.name = 'PoweredByDosh'
    spec.version = '3.0.0'
    spec.summary = 'PoweredByDosh iOS SDK'
    spec.description = <<-DESC
                        PoweredByDosh iOS SDK
                        Documentation available at https://poweredby.dosh.com/doc/.
                        DESC

    spec.homepage = 'https://github.com/dosh-com/powered-by-dosh-ios-releases'
    spec.license = { :type => 'Private', :file => 'PoweredByDosh.xcframework/LICENSE' }
    spec.authors = { 'Dosh Holdings Inc' => 'extservices@dosh.com' }
    spec.cocoapods_version = '>= 1.10.0'

    spec.ios.deployment_target = '11.0'

    spec.source = { :http => 'https://poweredby-sdk-release.dosh.com/ios/3.0.0/PoweredByDosh-all.zip' }
    spec.default_subspec = 'PoweredByDosh'
    spec.module_name = 'PoweredByDosh'

    spec.subspec 'PoweredByDosh' do |ss|
        ss.ios.vendored_frameworks = 'PoweredByDosh.xcframework'
    end

    spec.subspec 'DoshCardVaulting' do |ss|
        ss.ios.vendored_frameworks = 'DoshCardVaulting.xcframework'
        ss.dependency 'PoweredByDosh/PoweredByDosh'
    end
end
