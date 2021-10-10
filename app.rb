require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page'
end

get '/game' do
  erb(:index)
end