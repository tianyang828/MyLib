

Pod::Spec.new do |spec|

  spec.name         = "MyLib"
  spec.version      = "0.0.1"
  spec.summary      = "基类组件"
  spec.description  = "test pod 组件"

  spec.homepage     = "https://github.com/tianyang828/MyLib"
 
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { "tianyang" => "tianyang@163.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/tianyang828/MyLib.git", :tag => "0.0.1" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.frameworks    = "UIKit"
  spec.requires_arc = true

end
