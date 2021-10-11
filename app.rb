require 'sinatra/base'

require './lib/player'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/play' do
    $player_1 = Player.new(params[:player_1_name])
    @player_1_name = $player_1.name
    erb :play
  end

  post '/game' do
    @player_1_name = $player_1.name
    erb :game
  end 

  run! if app_file == $0
end
