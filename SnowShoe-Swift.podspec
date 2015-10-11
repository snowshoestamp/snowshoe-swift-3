#
# Be sure to run `pod lib lint SnowShoe-Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SnowShoe-Swift"
  s.version          = "1.0.0"
  s.summary          = "iOS wrapper for SnowShoe in Swift 2" 
  s.description      = <<-DESC
  SnowShoe is an authentication tool for smartphones. This library provides a simple Swift wrapper.
                       DESC

  s.homepage         = "https://github.com/mluedke2/SnowShoe-Swift"
  s.license          = 'MIT'
  s.author           = { "Matt Luedke" => "mluedke2@gmail.com" }
  s.source           = { :git => "https://github.com/mluedke2/SnowShoe-Swift.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/matt_luedke'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SnowShoe-Swift' => ['Pod/Assets/*.png']
  }

  s.dependency 'OAuthSwift', '0.4.4'
  s.dependency 'ObjectMapper', '0.17'
end
