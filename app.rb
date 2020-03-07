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
  post "/play" do
    $player = Player.new(params[:player_name])
    $game = Game.new($player)
    redirect "/play"
  end
  get '/play' do
    @player = $player
    @game = $game
    erb :play
    # @player_choice = params[:player_choice]
    # select(player_choice)
  end

  get '/result' do
    @game = $game
    @player_choice = @game.choose(params[:player_choice])
    @computer_choice = @game.computer_choice
    erb :result
  end
  run! if app_file == $0
end
