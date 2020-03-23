Pod::Spec.new do |s|
  s.default_subspec = 'Core'
  s.name         = "SignalR-ObjC"
  s.version      = "2.0.3"
  s.summary      = "Objective-C Client for the SignalR Project works with iOS and Mac."
  s.homepage     = "https://github.com/DyKnow/SignalR-ObjC"
  s.license      = 'MIT'
  s.author       = { "Alex Billingsley" => "abillingsley@dyknow.com" }
  s.source   	 = { :git => 'https://github.com/malkiel-plus500/SignalR-ObjC.git', :tag => 'v2.0.3' }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = true

  s.subspec 'Core' do |sp|
    sp.source_files = 'Framework/*.{h}', 'SignalR.Client/**/*.{h,m}'
    sp.dependency 'AFNetworking', '~> 3.0' 
    sp.dependency 'SocketRocket', '~>0.4'
  end

  s.subspec 'CocoaLumberjack' do |sp|
    sp.dependency 'CocoaLumberjack', '~>1.0'
    sp.dependency 'SignalR-ObjC/Core'
  end
end
