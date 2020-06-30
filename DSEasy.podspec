# Before uploading changes to the module, run `pod lib lint DSEasy.podspec` to ensure everything is ok.
# Change the version number based on the type of change
# Check that the module does not contain new warnings

Pod::Spec.new do |s|
  s.swift_version    = '5.0'
  s.name             = 'DSEasy'
  s.version          = '1.0.0'
  s.summary          = 'A short description of DSEasy.'
  s.description      = <<-DESC
  Custom components library.
                         DESC

  s.homepage         = 'https://github.com/erickkaiquesilva/DSEasy'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'erickkaiquesilva' => 'erickkay272@gmail.com' }
  s.source           = { :git => 'https://github.com/erickkaiquesilva/DSEasy.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.source_files = 'DSEasy/Classes/**/*'
  s.resource = ['DSEasy/Assests/*', 'DSEasy/MontserratFont/*.{ttf}']

  s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
