Pod::Spec.new do |s|
  s.name     = 'Ping'
  s.version  = '1.0.0'
  s.license  = { :type => 'public domain', :text => <<-LICENSE
Public Domain License

The CocoaAsyncSocket project is in the public domain.

The original TCP version (AsyncSocket) was created by Dustin Voss in January 2003.
Updated and maintained by Deusty LLC and the Apple development community.
                 LICENSE
               }
  s.summary  = 'Asynchronous socket networking library for Mac and iOS.'
  s.homepage = 'https://github.com/connerwu/Ping'
  s.authors  = 'Conner Wu', { 'ConnerWu' => '244295790@qq.com' }

  s.source   = { :git => 'https://github.com/connerwu/Ping.git',
                 :tag => "#{s.version}" }

  s.description = 'CocoaAsyncSocket supports TCP and UDP. The AsyncSocket class is for TCP, and the AsyncUdpSocket class is for UDP. ' \
                  'AsyncSocket is a TCP/IP socket networking library that wraps CFSocket and CFStream. It offers asynchronous ' \
                  'operation, and a native Cocoa class complete with delegate support or use the GCD variant GCDAsyncSocket. ' \
                  'AsyncUdpSocket is a UDP/IP socket networking library that wraps CFSocket. It works almost exactly like the TCP ' \
                  'version, but is designed specifically for UDP. This includes queued non-blocking send/receive operations, full ' \
                  'delegate support, run-loop based, self-contained class, and support for IPv4 and IPv6.'

  s.source_files = 'Source'

  s.requires_arc = true

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.10'

  s.ios.frameworks = 'CFNetwork', 'Security'
  s.osx.frameworks = 'CoreServices', 'Security'
end
