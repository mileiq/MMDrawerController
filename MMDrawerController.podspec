Pod::Spec.new do |s|
  s.name         = "MMDrawerController"
  s.version      = "0.6.4"
  s.summary      = "A lightweight, easy-to-use side drawer navigation controller."
  s.homepage     = "https://github.com/mutualmobile/MMDrawerController"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Kevin Harwood" => "kevin.harwood@mutualmobile.com" }
  s.source       = { :git => "https://github.com/mileiq/MMDrawerController.git", :tag => "0.6.0" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.screenshots = [ "http://mutualmobile.github.io/MMDrawerController/ExampleImages/example1.png",
                       "http://mutualmobile.github.io/MMDrawerController/ExampleImages/example2.png" ]
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'MMDrawerController/MMDrawerController.{h,m}', 'MMDrawerController/UIViewController+MMDrawerController*'
    ss.framework  = 'QuartzCore'
  end
  
  s.subspec 'MMDrawerBarButtonItem' do |ss|
      ss.source_files = 'MMDrawerController/MMDrawerBarButtonItem.{h,m}'
      ss.dependency 'MMDrawerController/Core'
    end
    
  s.subspec 'MMDrawerVisualStates' do |ss|
      ss.source_files = 'MMDrawerController/MMDrawerVisualState.{h,m}'
      ss.dependency 'MMDrawerController/Core'
    end
    
  s.subspec 'Subclass' do |ss|
      ss.source_files = 'MMDrawerController/MMDrawerController+Subclass.h'
      ss.dependency 'MMDrawerController/Core'
  end
end
