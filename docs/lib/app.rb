require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page'
end

get '/game' do
  "<div>
    <img src='https://facts.net/wp-content/uploads/2020/11/rock-paper-scissors-730x487.jpg'>
   </div>"
end

get '/cat' do
  erb(:index)
end