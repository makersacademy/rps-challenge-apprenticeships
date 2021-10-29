require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
require 'sinatra/reloader' if development?

  get '/' do
    erb :index
  end

  get '/register' do 
    erb :register
  end 

  post '/solo' do 
    @solo = true 
    @multiplayer = false
    erb :register
  end 

  post '/multiplayer' do 
    @solo = false 
    @multiplayer = true 
    erb :register
  end 

  post '/players' do 

  end 

  post '/player' do 

  end 
  
  run! if app_file == $0
end
