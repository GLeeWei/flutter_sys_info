#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint sys_info.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'sys_info'
  s.version          = '0.0.1'
  s.summary          = 'A Device Info plugin with some extra functionality.With this plugin you can get same info, such as battery,camera,CPU,Display,DRM,Memory,Network,System.'
  s.description      = <<-DESC
A Device Info plugin with some extra functionality.With this plugin you can get same info, such as battery,camera,CPU,Display,DRM,Memory,Network,System.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
