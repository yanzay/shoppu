# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shoppu/version'

Gem::Specification.new do |spec|
  spec.name          = "shoppu"
  spec.version       = Shoppu::VERSION
  spec.authors       = ["Yanzay"]
  spec.email         = ["grachov.alexey@gmail.com"]
  spec.summary       = %q{Open platform for e-commerce as a service.}
  spec.description   = %q{Open source platform for e-commerce as a service.}
  spec.homepage      = "https://github.com/Yanzay/shoppu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 0'
end
