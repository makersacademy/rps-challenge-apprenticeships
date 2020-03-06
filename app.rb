require 'sinatra/base'
require_relative "lib/player.rb"
require_relative "lib/game.rb"
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end
  get "/" do
    erb :homepage
  end
  post "/register_name" do
    $player = Player.new(params[:player_name])
    # $game = Game.new(player_name)
    redirect "/play"
  end
  get '/play' do
    @player = $player
    # @game = $game
    erb :play
    # @player_choice = params[:player_choice]
    # select(player_choice)
  end

  get '/result' do
    erb :result
  end
   run! if app_file == $0
end
