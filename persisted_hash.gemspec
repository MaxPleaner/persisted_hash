require_relative './lib/version.rb'
Gem::Specification.new do |s|
  s.name        = "persisted_hash"
  s.version     = PersistedHash::VERSION
  s.date        = "2016-12-21"
  s.summary     = "patch to Hash class to persist to YAML file"
  s.description = ""
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["maxpleaner"]
  s.email       = 'maxpleaner@gmail.com'
  s.homepage    = "http://github.com/maxpleaner/gemmy"
  s.required_ruby_version = '~> 2.3'
  s.files       = Dir["lib/**/*.rb", "bin/*", "**/*.md", "LICENSE"]
  s.require_path = 'lib'
  s.required_rubygems_version = ">= 2.5.1"
  s.executables = Dir["bin/*"].map &File.method(:basename)
  s.add_dependency "colored"
  s.add_dependency 'activesupport'
  s.add_dependency 'pry'
  s.add_dependency 'thor'
  s.add_dependency 'gemmyrb'
  s.license     = 'MIT'
end
