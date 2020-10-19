#
#  Be sure to run `pod spec lint GoodsTitleAttr.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "GoodsTitleAttr"
  spec.version      = "0.0.1"
  spec.summary      = "A TestDemo"
  spec.homepage     = "https://github.com/liushouxun/Test"
  spec.license      = "MIT"


  spec.author             = { "liusx" => "952520223@qq.com" }


  spec.source       = { :git => "https://github.com/liushouxun/Test.git", :tag => "#{spec.version}" }

  spec.source_files  = 'GoodsTitleAttr/*.{h,m}'

  spec.requires_arc = true # 是否启用ARC


  spec.platform     = :ios, "9.0" #平台及支持的最低版本

end
