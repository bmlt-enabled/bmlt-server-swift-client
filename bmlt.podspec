Pod::Spec.new do |s|
  s.name = 'bmlt'
  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.6'
  s.tvos.deployment_target = '15.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.0'
  s.source = { :git => 'https://github.com/bmlt-enabled/bmlt-root-server-swift-client.git', :tag => '1.0.0' }
  s.authors = 'bmlt-enabled'
  s.license = 'MIT'
  s.homepage = 'https://github.com/bmlt-enabled/bmlt-root-server-swift-client/'
  s.summary = 'bmlt Swift SDK'
  s.description = 'BMLT Admin API Client'
  s.source_files = 'bmlt/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
  s.swift_version = '5.0'
end
