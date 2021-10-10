require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :index 
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :name 
  end

  get '/play' do
    @player_name = params[:player_name]
    @rock_option = params[:rock_option]
    erb :play
  end
end
