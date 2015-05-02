#
# Be sure to run `pod lib lint JAGiTunesStoreSearch.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AdMobSupport"
  s.version          = "1.0.0"
  s.summary          = "AdMob and Nend and iAd"
  s.description  = <<-DESC

                   DESC

  s.homepage         = "https://github.com/ryuiwasaki/AdMobSupport"
  s.license          = 'MIT'
  s.author           = { "Ryu Iwasaki" => "ryu.contact.jp@gmail.com" }
  s.source           = { :git => "https://github.com/ryuiwasaki/AdMobSupport.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ja_gaimopotato'

  s.platform     = :ios, '8.1'
  s.requires_arc = true

  s.source_files = 'Classes'
  s.resources = 'Resources'
  s.dependency 'NendSDK_iOS', 'Google-Mobile-Ads-SDK'

  s.subspec 'libAdapteriAd' do |libAdapteriAd|
    libAdapteriAd.source = { :http => 'https://dl.google.com/dl/googleadmobadssdk/libadapteriad.zip', :flatten => true }
    libAdapteriAd.library = 'AdapterIAd'
    libAdapteriAd.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/AdMobMediationAdapterIAd/"'}
  end
end
