# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hello_endpoint/version'

Gem::Specification.new do |spec|
  spec.name          = "hello_endpoint"
  spec.version       = HelloEndpoint::VERSION
  spec.authors       = ["Orest Hrycyna"]
  spec.email         = ["orest.hrycyna@gmail.com"]
  spec.description   = "Just a simple endpoint gem"
  spec.summary       = "Just a simple endpoint gem"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

#sinatra
  spec.add_development_dependency 'sinatra'
  spec.add_development_dependency 'sinatra-contrib'
  spec.add_development_dependency 'tilt-jbuilder'
  spec.add_development_dependency 'rack-test'

end
