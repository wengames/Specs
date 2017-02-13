Pod::Spec.new do |s|
  s.name             = "IUChain"
  s.version          = "0.0.1"
  s.summary          = "chain method"
  
  s.description      = “chain method in Obj-C”

  s.homepage         = "https://github.com/wengames/IUChain"
  s.license          = 'MIT'
  s.author           = { “liuhaiwen” => “455429974@qq.com" }
  s.source           = { :git => "https://github.com/wengames/IUChain.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'IUChain/*'

  s.frameworks = "UIKit"
  s.dependency 'IUMethodSwizzle'
end
