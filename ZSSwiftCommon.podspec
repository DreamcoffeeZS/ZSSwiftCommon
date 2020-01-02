#
# Be sure to run `pod lib lint ZSSwiftCommon.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZSSwiftCommon'
  s.version          = '1.0.0'
  s.summary          = 'Swift工程Common组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Common组件包含创建工程所需的各种参数、字符串、颜色处理等工具类"

  s.homepage         = 'https://github.com/DreamcoffeeZS/ZSSwiftCommon'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DreamcoffeeZS' => 'dreamcoffeezs@163com' }
  s.source           = { :git => 'https://github.com/DreamcoffeeZS/ZSSwiftCommon.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'ZSSwiftCommon/Classes/**/*'
  
  s.subspec 'Params' do |ss|
    ss.source_files = 'ZSSwiftCommon/Params/**/*'
  end
  
  s.subspec 'Extension' do |ss|
     ss.source_files = 'ZSSwiftCommon/Extension/**/*'
   end

  
  # s.resource_bundles = {
  #   'ZSSwiftCommon' => ['ZSSwiftCommon/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
