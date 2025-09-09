# src/app.rb
require 'sinatra'
require 'json'
set :server, :webrick
# Basic text endpoint
get '/hello' do
  "Hello from your Ruby API!"
end

# JSON endpoint: /greet?name=Mungai
get '/greet' do
  content_type :json
  name = params['name'] || 'World'
  { message: "Hello, #{name}!", timestamp: Time.now }.to_json
end
get '/favicon.ico' do
  status 204  # no content
end