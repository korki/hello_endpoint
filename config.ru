require 'rubygems'
require 'bundler'

Bundler.require(:default)
require "./hello_endpoint"
run HelloEndpoint::Base
