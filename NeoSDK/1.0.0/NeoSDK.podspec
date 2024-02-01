#
#  Be sure to run `pod spec lint NeoSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "NeoSDK"
  s.version      = "1.0.0"
  s.summary      = "NeoSDK framework 1.0.0"
  s.description  = <<-DESC
                   An optional longer description of NeoSDK.
                   DESC
  s.homepage     = "https://github.com/NEOCRAFT/NeoFramework.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Alfred" => "linlin07.sun@neocraftstudio.com" }
  s.source       = { :git => 'https://github.com/NEOCRAFT/NeoFramework.git', :tag => "#{s.version}" }
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64 arm64'
  }
  s.platform     = :ios, '13.0'
  s.exclude_files = "Classes/Exclude"
  s.swift_versions = ['5.0']
  # 如果你有vendored_frameworks
  s.vendored_frameworks = "NeoSDK.framework"
  # 指定依赖项
  s.dependency 'FirebaseAuth'
  s.dependency 'FirebaseCore'
  s.dependency 'FirebaseMessaging'
  s.dependency 'FirebaseAnalytics'
  s.dependency 'GoogleSignIn'
  s.dependency 'MSAL'
  s.dependency 'FBSDKCoreKit', '14.1.0'
  s.dependency 'FBSDKLoginKit', '14.1.0'
  s.dependency 'FBSDKShareKit', '14.1.0'
  s.dependency 'Adjust'
  s.dependency 'AppLovinSDK'
  s.dependency 'AppLovinMediationFyberAdapter'
  s.dependency 'AppLovinMediationGoogleAdapter'
  s.dependency 'AppLovinMediationFacebookAdapter' 
  s.dependency 'AppLovinMediationUnityAdsAdapter'
  s.dependency 'AppLovinMediationIronSourceAdapter'
  s.dependency 'FBAudienceNetwork','6.10.0'

end
