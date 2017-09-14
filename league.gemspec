# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'league/version'

Gem::Specification.new do |spec|
  spec.name          = "league"
  spec.version       = League::VERSION
  spec.authors       = ["Aashish Kiran"]
  spec.email         = ["aashish.kiran@gmail.com"]
  spec.summary       = %q{a ruby library/gem for generating ranking output file}
  spec.description   = %q{a ruby library/gem for generating ranking file from organised data in input file}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.executables = ['league']

  spec.files = Dir["README.md", "LICENSE.md", "lib/**/*.rb"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.required_ruby_version = '>= 2.0.0'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
