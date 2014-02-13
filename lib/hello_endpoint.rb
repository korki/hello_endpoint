require 'sinatra'
require 'endpoint_base'
require 'endpoint_base/sinatra'

module HelloEndpoint
  class Base < EndpointBase::Sinatra::Base
    post '/' do
      process_result 200
    end

    post '/product_existence_check' do
      product_names = JSON.parse(
        File.read('product_catalog.json'))['products'].map { |p| p['name'] }

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

    post '/echo' do
      echo = @message[:payload]
      echo[:message_id] = @message[:message_id]
      echo.delete :parameters

      process_result 200, echo
    end

    post '/fail' do
      process_result 500, { message_id: @message[:message_id],
                            received: @message[:payload] }
    end
  end
end
