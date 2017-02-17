Pod::Spec.new do |s|
  s.name            = "IUKit"
  s.version         = "0.0.1"
  s.summary         = "IUKit"

  s.description     = "IUKit in Obj-C"

  s.homepage        = "https://github.com/wengames/IUKit"
  s.license         = 'MIT'
  s.author          = { "liuhaiwen" => "455429974@qq.com" }
  s.source          = { :git => "https://github.com/wengames/IUKit.git", :tag => s.version.to_s, :submodules => true }

  s.platform        = :ios, '7.0'
  s.requires_arc    = true

  s.source_files    = 'IUKit/IUKit.h'

  s.subspec 'IUMethodSwizzling' do |ss|
      ss.source_files = 'IUKit/IUMethodSwizzling/*'
      ss.public_header_files = 'IUKit/IUMethodSwizzling/*.h'
      ss.frameworks = "Foundation"
  end
  s.subspec 'IUChain' do |ss|
      ss.dependency 'IUKit/IUMethodSwizzling'
      ss.source_files = 'IUKit/IUChain/*'
      ss.public_header_files = 'IUKit/IUChain/*.h'
      ss.frameworks = "UIKit"
  end
  s.subspec 'IUController' do |ss|
      ss.dependency 'IUKit/IUMethodSwizzling'
      ss.dependency 'SDWebImage'
      ss.source_files = 'IUKit/IUController/*', 'IUKit/IUController/**/*'
      ss.public_header_files = 'IUKit/IUController/*.h', 'IUKit/IUController/**/*.h'
      ss.frameworks = "UIKit"
  end
  s.subspec 'IURouter' do |ss|
      ss.source_files = 'IUKit/IURouter/*'
      ss.public_header_files = 'IUKit/IURouter/*.h'
      ss.frameworks = "UIKit"
  end
  s.subspec 'IUUtil' do |ss|
      ss.dependency 'IUKit/IUMethodSwizzling'
      ss.source_files = 'IUKit/IUUtil/*', 'IUKit/IUUtil/**/*'
      ss.public_header_files = 'IUKit/IUUtil/*.h', 'IUKit/IUUtil/**/*.h'
      ss.frameworks = "UIKit"
  end
  s.subspec 'IUTextInput' do |ss|
      ss.dependency 'IUKit/IUMethodSwizzling'
      ss.source_files = 'IUKit/IUTextInput/*'
      ss.public_header_files = 'IUKit/IUTextInput/*.h'
      ss.frameworks = "UIKit"
  end
  s.subspec 'IUNetworking' do |ss|
      ss.dependency 'IUKit/IUProtect'
      ss.dependency 'AFNetworking', '~> 3.1.0'
      ss.dependency 'MJExtension'
      ss.source_files = 'IUKit/IUNetworking/*'
      ss.public_header_files = 'IUKit/IUNetworking/*.h'
      ss.frameworks = "Foundation"
  end
  s.subspec 'IUProtect' do |ss|
      ss.source_files = 'IUKit/IUProtect/*'
      ss.public_header_files = 'IUKit/IUProtect/*.h'
      ss.frameworks = "Foundation"
  end
end
