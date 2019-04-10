Pod::Spec.new do |s|
  s.name         = "Ping"
  s.version      = "1.0.0"
  s.summary      = "Ping tools for iOS and macOS."


  s.homepage     = "https://github.com/connerwu/Ping"
  s.license      = "MIT"
  s.author       = { "ConnerWu" => "244295790@qq.com" }
  s.source  = { :git => "https://github.com/connerwu/Ping.git", :tag => s.version }
  s.source_files  = "Ping/*.{h,m}"

  s.public_header_files = 'Ping/PingHelper.h'

  s.requires_arc = true

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
end