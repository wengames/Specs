Pod::Spec.new do |s|
  s.name             = "IUMethodSwizzle"
  s.version          = "0.0.1"
  s.summary          = "method swizzling"
  
  s.description      = “method swizzling safely in Obj-C”

  s.homepage         = "https://github.com/wengames/IUMethodSwizzle"
  s.license          = 'MIT'
  s.author           = { “liuhaiwen” => “455429974@qq.com" }
  s.source           = { :git => "https://github.com/wengames/IUMethodSwizzle.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'IUMethodSwizzle/*'

  s.frameworks = “Foundation”
end
