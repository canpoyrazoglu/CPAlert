#
#  Be sure to run `pod spec lint CPImageView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "CPAlert"
  s.version      = "0.1.0"
  s.summary      = "A simple alert wrapper that can be used for displaying alerts."
  s.description  = "A simple alert wrapper that can be used for displaying alerts. It also accepts completions for simple responses and can be used for inputting text."
  s.homepage     = "https://github.com/canpoyrazoglu/CPAlert"


  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "Can Poyrazoğlu" => "can@canpoyrazoglu.com" }
  s.social_media_url   = "http://twitter.com/canpoyrazoglu"



  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/canpoyrazoglu/CPAlert.git", :tag => 'v0.1.1' }


  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"



end
