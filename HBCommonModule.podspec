#
# Be sure to run `pod lib lint HBCommonModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# 库的名称
Pod::Spec.new do |s|
# 库的名称
  s.name             = 'HBCommonModule'
# 版本号
  s.version          = '0.1.0'
# 库的介绍
  s.summary          = 'A short description of HBCommonModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

# 库的描述
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
# 主页，随意写
  s.homepage         = 'https://github.com/haobin/HBCommonModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
#  开源协议
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
#  作者、邮箱号
  s.author           = { 'haobin' => '510104724@qq.com' }
#  库下载地址
  s.source           = { :git => 'https://github.com/haobingege/HBCommonModule.git', :tag => s.version.to_s }
#  社交网址
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
# 最低版本支持
  s.ios.deployment_target = '10.0'

#  源文件位置
  s.source_files = 'HBCommonModule/Classes/**/*'
#  资源文件位置
  # s.resource_bundles = {
  #   'HBCommonModule' => ['HBCommonModule/Assets/*.png']
  # }

#  公共头文件
  # s.public_header_files = 'Pod/Classes/**/*.h'
#  依赖的系统库
  # s.frameworks = 'UIKit', 'MapKit'
#  依赖的第三方库
  # s.dependency 'AFNetworking', '~> 2.3'
end
