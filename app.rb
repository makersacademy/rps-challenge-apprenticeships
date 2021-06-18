require "sinatra/base"
require "./lib/player.rb"
# require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/start" do
    $player1 = Player.new(params[:player1])
    redirect "/play"
  end

  get "/play" do
    @player1 = $player1.name
    erb :play
  end

  get "/rps-game" do
    @move = ["rock", "paper", "scissors"].sample
    @player1 = $player1.name
    erb :game
  end

  run! if app_file == $0
end
