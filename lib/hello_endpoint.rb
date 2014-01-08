require "hello_endpoint/version"
require 'sinatra'
require 'endpoint_base'

module HelloEndpoint 
	class Base < EndpointBase::Sinatra::Base
	  	post '/' do
	    	process_result 200
	  	end

	  post '/product_existence_check' do
	    product_names = JSON.parse(File.read("product_catalog.json"))['products'].map{|p| p["name"]}

	    if product_names.include?(@message[:payload]['product']['name'])
	      add_notification 'info', 'product exists', 'product exists in the database'

	      process_result 200
	    else
	      add_notification 'info', 'product does not exists', 'product does not exists in the database'

	      process_result 200
	    end
	  end	  

	  post '/test' do
		add_notification 'info', 'test', 'test'	  	
		process_result 200
	  end
	end
end
