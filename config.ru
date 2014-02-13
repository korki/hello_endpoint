require 'rubygems'
require 'bundler'

Bundler.require(:default)
require "./lib/hello_endpoint"
run HelloEndpoint::Base
