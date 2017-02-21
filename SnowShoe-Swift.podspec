#
# Be sure to run `pod lib lint SnowShoe-Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SnowShoe-Swift"
  s.version          = "2.0.0"
  s.summary          = "iOS wrapper for SnowShoe in Swift 3"
  s.description      = <<-DESC
  SnowShoe is an authentication tool for smartphones. This library provides a simple Swift wrapper.
                       DESC

  s.homepage         = "https://github.com/snowshoestamp/snowshoe-swift-3"
  s.license          = 'MIT'
  s.author           = { "SnowShoe" => "support@snowshoestamp.com" }
  s.source           = { :git => "https://github.com/snowshoestamp/snowshoe-swift-3.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SnowShoe-Swift' => ['Pod/Assets/*.png']
  }

  s.dependency 'OAuthSwift', '1.1.0'
  s.dependency 'ObjectMapper', '2.2.3'
end
