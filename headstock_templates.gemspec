# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'headstock_templates/version'

Gem::Specification.new do |spec|
  spec.name          = "headstock_templates"
  spec.version       = HeadstockTemplates::VERSION
  spec.authors       = ["George Millo"]
  spec.email         = ["georgejulianmillo@gmail.com"]
  spec.summary       = %q{Better Rails templates.}
  spec.description   = %q{Overriding the default Rails templates.}
  spec.homepage      = "https://github.com/headstock/templates"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
