require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  post "/play" do
    $player1 = Player.new(params[:player1])
    @player1 = $player1.name
    erb :play
  end

  get "/rps-game" do
    @player1 = $player1.name
    erb :game
  end

  post "/result" do
    @player1_move = params[:player1_move]
    @computer_move = Game.new.random_weapon
    erb :result
  end

  run! if app_file == $0
end
