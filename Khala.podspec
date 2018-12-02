Pod::Spec.new do |s|
  s.name    = 'Khala'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'For we are bound by the Khala.(神圣的卡拉连接着我们.)'
  
  s.homepage  = 'https://github.com/linhay/Khala'
  s.author    = { 'linhey' => 'is.linhay@outlook.com' }
  s.source    = { :git => 'https://github.com/linhay/Khala.git', :tag => s.version.to_s }
  
  s.swift_version = '4.2'

  s.ios.deployment_target = '8.0'
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'

  s.subspec 'core' do |ss|
    ss.source_files = ['Sources/core/*.{swift,h}']
    ss.public_header_files = ['Sources/core/Khala.h']
  end

  s.subspec 'extension' do |ss|
    ss.source_files = 'Sources/extension/*.{swift}'
    ss.dependency 'Khala/core'
  end

  s.dependency 'DarkTemplar', '0.0.1'
  s.requires_arc = true
end
