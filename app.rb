require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/named_player' do 
    p params
    @player_name = params[:player_name]
    erb :play_game
  end 

  run! if app_file == $0
end
