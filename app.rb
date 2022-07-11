require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'


class RockPaperScissors < Sinatra::Base
    
  get '/' do    
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end 

  get '/play' do
    @name1 = $player_1.name
    erb :play
  end 

  run! if app_file == $0
end
