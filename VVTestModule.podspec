
Pod::Spec.new do |spec|
  spec.name         = "VVTestModule"
  spec.version      = "0.0.3"
  spec.summary      = "VVTestModule"
  spec.homepage     = "https://github.com/chinaxxren/VVTestModule"
  spec.license      = "MIT"
  spec.author       = { "chinaxxren" => "182421693@qq.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/chinaxxren/VVTestModule.git", :tag => "#{spec.version}" }
  spec.source_files  = "VVTestModule/Source", "VVTestModule/Source/**/*.*"
  spec.frameworks  = "UIKit"
  spec.dependency  "VVModule"
end
