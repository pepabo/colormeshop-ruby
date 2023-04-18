$:.push File.expand_path("../lib", __FILE__)
require "color_me_shop/version"

Gem::Specification.new do |s|
  s.name        = "color_me_shop"
  s.version     = ColorMeShop::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["GMO Pepabo inc."]
  s.email       = [""]
  s.homepage    = "https://shop-pro.jp"
  s.summary     = "カラーミーショップ API Ruby Gem"
  s.description = "カラーミーショップAPIのRubyクライアントです。"
  s.license     = 'MIT'
  s.required_ruby_version = "< 3.1"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
