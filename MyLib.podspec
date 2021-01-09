

Pod::Spec.new do |spec|

  spec.name         = "MyLib"
  spec.version      = "0.0.1"
  spec.summary      = "基类组件"
  spec.description  = "test pod 组件"

  spec.homepage     = "https://github.com/tianyang828/MyLib.git"
 
  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "tianyang" => "tianyang@163.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/tianyang828/MyLib.git", :tag => "0.0.1" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
  
  # spec.public_header_files = "Classes/**/*.h"
  s.framework    = "UIKit"
  spec.requires_arc = true
  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"
  # spec.frameworks = "SomeFramework", "AnotherFramework"
  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
