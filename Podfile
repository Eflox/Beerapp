# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'beerapp' do
  use_frameworks!

pod 'Appirater'
pod 'SDWebImage'

# Firebase
pod 'Firebase'
pod 'Firebase/Core'
pod 'Firebase/Auth'
pod 'Firebase/Database'
pod 'Firebase/Analytics'
pod 'Firebase/Crashlytics'
pod 'Firebase/Storage'

post_install do |installer|
 installer.pods_project.targets.each do |target|
  target.build_configurations.each do |config|
   config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
  end
 end
end

end
