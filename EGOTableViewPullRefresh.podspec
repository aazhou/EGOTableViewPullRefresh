'
d::Spec.new do |s|
  s.name     = 'EGOTableViewPullRefresh'
  s.version  = '0.1.0'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'A similar control to the pull down to refresh control created by atebits in Tweetie 2.'
  s.homepage = 'https://github.com/aazhou/EGOTableViewPullRefresh'
  s.author   = { 'aazhou' => 'aaron.l.zhou@gmail.com' }
  s.source   = { :git    => 'https://github.com/aazhou/EGOTableViewPullRefresh.git' }

  s.source_files = 'EGOTableViewPullRefresh/Classes/View/*.{h,m}'
  s.resources    = 'EGOTableViewPullRefresh/Resources/*.png'

  s.framework    = 'QuartzCore'
end

