# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "aftership-tracking-sdk/version"

Gem::Specification.new do |s|
  s.name        = "aftership-tracking-sdk"
  s.version     = AftershipAPI::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["AfterShip Team"]
  s.email       = ["support@aftership.com"]
  s.homepage    = "https://www.aftership.com/docs/tracking/quickstart/api-quick-start"
  s.summary     = "API Overview Ruby Gem"
  s.description = ""
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"
  s.metadata = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
