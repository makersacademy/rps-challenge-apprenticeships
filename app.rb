require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
    configure :development do
    register Sinatra::Reloader
  end



  get '/' do
   erb :index
  end


  post '/names' do
  name = params["player_name"]
  announcement = "Hello #{name}, choose your bet:"
  
  end 
 

  get '/play' do
  # @player_name = session[:player_name]
  erb :play
  end

 

  run! if app_file == $0
end
