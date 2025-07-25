Pod::Spec.new do |s|
  s.name = 'bmlt'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = '1.0.2'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0' }
  s.authors = 'bmlt-enabled'
  s.license = MIT
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'bmlt Swift SDK'
  s.description = 'BMLT Admin API Client'
  s.source_files = 'bmlt/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
