Pod::Spec.new do |s|
  s.name     = 'Ping'
  s.version  = '1.0.1'
  s.summary  = 'Ping tools for iOS and macOS.'
  s.homepage = 'https://github.com/connerwu/Ping'
  s.license  = 'MIT'
  s.authors  = {'ConnerWu' => '244295790@qq.com'}
  s.source   = {:git => 'https://github.com/connerwu/Ping.git', :tag => s.version}
  s.source_files = 'Source'
  s.requires_arc = true

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.10'

  s.ios.frameworks = 'CFNetwork', 'Security'
  s.osx.frameworks = 'CoreServices', 'Security'
end
