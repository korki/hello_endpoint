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

  spec.add_dependency 'endpoint_base'
  spec.add_dependency 'pony'
  spec.add_dependency 'savon'
  spec.add_dependency 'httparty'
  spec.add_dependency 'json'
  spec.add_dependency 'multi_json'  

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'sinatra'
  spec.add_development_dependency 'sinatra-contrib'
  spec.add_development_dependency 'tilt-jbuilder'

end
