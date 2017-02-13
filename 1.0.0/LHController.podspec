Pod::Spec.new do |s|
  s.name             = "LHController"
  s.version          = "1.0.0"
  s.summary          = "Controller used on iOS."
  s.description      = "Controller used on iOS, which implement by Objective-C."
  s.homepage         = "https://github.com/wengames/LHController"
  s.license          = 'MIT'
  s.author           = { "刘海文" => "455429974@qq.com" }
  s.source           = { :git => "https://github.com/wengames/LHController.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'LHController/*'

  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'
end
