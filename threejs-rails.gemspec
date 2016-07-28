# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'threejs-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "threejs-rails"
  spec.version       = Threejs::Rails::VERSION
  spec.authors       = ["Marvin Danig", "Scott Parrish"]
  spec.email         = ["marvin@bubbl.in","anithri@gmail.com"]
  spec.summary       = %q{Three.js bundled for Rails}
  spec.description   = %q{Three.js bundled for Rails}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "version", "~> 1.0"

  spec.add_dependency("railties", ">= 3.0.0")
end
