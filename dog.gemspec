# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dog/version'

Gem::Specification.new do |spec|
  spec.name          = "dog"
  spec.version       = Dog::VERSION
  spec.authors       = ["Ignazio Mostallino"]
  spec.email         = ["gnagno@gmail.com"]
  spec.summary       = %q{The fantastic dog command}
  spec.description   = %q{The fantastic dog command}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
