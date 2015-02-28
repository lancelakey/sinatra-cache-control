require 'sinatra'

before do
  cache_control :public, :must_revalidate, :max_age => 5
end

get '/hello' do
  'Hello world from Sinatra!'
end

get '/file' do
  send_file 'file.txt'
end
