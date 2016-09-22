Pod::Spec.new do |s|
  s.name         = 'SwiftyDropbox'
  s.version      = '4.0.3'
  s.summary      = 'Dropbox Swift SDK for API v2'
  s.homepage     = 'https://dropbox.com/developers/'
  s.license      = 'MIT'
  s.author       = { 'Stephen Cobbe' => 'scobbe@dropbox.com' }
  s.source       = { :git => 'https://github.com/dropbox/SwiftyDropbox.git', :tag => s.version }

  s.osx.source_files = 'Source/SwiftyDropbox/SwiftyDropbox_macOS/SwiftyDropbox_macOS.h', 'Source/SwiftyDropbox/PlatformNeutral/*.{h,m,swift}', 'Source/SwiftyDropbox/PlatformDependent/macOS/*.{h,m,swift}'
  s.ios.source_files = 'Source/SwiftyDropbox/SwiftyDropbox/SwiftyDropbox.h', 'Source/SwiftyDropbox/PlatformNeutral/*.{h,m,swift}', 'Source/SwiftyDropbox/PlatformDependent/iOS/*.{h,m,swift}'
  s.tvos.source_files = 'Source/SwiftyDropbox/SwiftyDropbox/SwiftyDropbox.h', 'Source/SwiftyDropbox/PlatformNeutral/*.{h,m,swift}', 'Source/SwiftyDropbox/PlatformDependent/tvOS/*.{h,m,swift}'

  s.requires_arc = true

  s.osx.deployment_target = '10.11'
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'

  s.osx.frameworks = 'AppKit', 'Foundation'
  s.ios.frameworks = 'UIKit', 'Foundation'
  s.tvos.frameworks = 'Foundation'

  s.dependency       'Alamofire', '~> 4.0.0'
end
