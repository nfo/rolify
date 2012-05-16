# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rolify/version"

Gem::Specification.new do |s|
  s.name        = "rolify"
  s.version     = Rolify::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Florent Monbillard"]
  s.email       = ["f.monbillard@gmail.com"]
  s.homepage    = "http://eppo.github.com/rolify/"
  s.summary     = %q{Roles library with resource scoping}
  s.description = %q{Very simple Roles library without any authorization enforcement supporting scope on resource objects (instance or class). Supports ActiveRecord and Mongoid ORMs.}

  s.rubyforge_project = s.name

  s.files         = Dir.glob("lib/**/*") + %w(CHANGELOG.rdoc LICENSE Rakefile README.md UPGRADE.rdoc)
  s.test_files    = Dir["spec/**/*"]
  s.require_paths = ["lib"]
  
  if defined?(RUBY_ENGINE) && RUBY_ENGINE == "jruby"
    s.add_development_dependency "activerecord-jdbcsqlite3-adapter"
  else
    s.add_development_dependency "sqlite3"
  end
  s.add_development_dependency "activerecord", ">= 3.1.0"
  s.add_development_dependency "mongoid", ">= 2.3"
  s.add_development_dependency "bson_ext"
  s.add_development_dependency "ammeter"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "bundler" 
end
