# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grid_for/version'

Gem::Specification.new do |spec|
  spec.name          = "grid_for"
  spec.version       = GridFor::VERSION
  spec.authors       = ["Ole J. Rosendahl"]
  spec.email         = ["ole.johnny.rosendahl@gmail.com"]

  spec.summary       = "Easily create grid for your Rails views."
  spec.homepage      = "https://github.com/blacktangent/grid_for"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "app"]

  spec.add_dependency "rails", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
