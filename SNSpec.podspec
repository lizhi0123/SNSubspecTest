#  pod spec create SNSpec 创建 SNSpec.podspec 
#  Be sure to run `pod spec lint SNSpec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "SNSpec"
  s.version      = "1.0"
  s.summary      = "example SNSpec. 私有库"
  s.description  = <<-DESC
  example SNSpec. 私有库 示例
                   DESC

  s.homepage     = "http://www.baidu.com"
  
  s.license      = "MIT"
 
  s.author             = { "Sunny" => "zhang_zhi_li@163.com" }
  
#  s.source       = { :git => "https://github.com/lizhi0123/SNSubspecTest.git", :commit => "eaf9c02" }
 s.source       = { :git => "https://github.com/lizhi0123/SNSubspecTest.git", :branch => "master" }


  s.source_files  = "SNSpec", "SNSpec/SNSpec.{h,m}"

  s.exclude_files = "SNSpec/Exclude"


  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

   s.subspec 'SNSubspec' do |ss|
    # ss.ios.deployment_target = '9.0'

    # ss.source_files = 'AFNetworking/AFNetworkReachabilityManager.{h,m}'
    ss.source_files =  "SNSpec/SNSubspec", "SNSpec/SNSubspec/**/*.{h,m}"
    # ss.public_header_files = 'AFNetworking/AFNetworkReachabilityManager.h'

    # ss.frameworks = 'SystemConfiguration'
    ss.dependency 'MGJRouter', '~> 0.9.3'
  end

   s.subspec 'SNDetialPage' do |ss|
    # ss.ios.deployment_target = '9.0'

    # ss.source_files = 'AFNetworking/AFNetworkReachabilityManager.{h,m}'
    ss.source_files =  "SNSpec/SNDetialPage", "SNSpec/SNDetialPage/**/*.{h,m}"
    # ss.public_header_files = 'AFNetworking/AFNetworkReachabilityManager.h'

    # ss.frameworks = 'SystemConfiguration'
    ss.dependency 'MGJRouter', '~> 0.9.3'
  end

  

end
