require "sinatra/base"
require "sinatra/reloader"
require "./lib/player"
require "./lib/computer"
require "./lib/game"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/test" do
    "test page"
  end

  get "/" do
    erb(:index)
  end

  post "/play" do
    $player_1 = Player.new(params[:player_1_name])
    @player_1 = $player_1
    erb(:play)
  end

  post "/game" do
    @computer = Computer.new
    @player_1 = $player_1
    @game = Game.new(@player_1, @computer)
    @player_weapon = @game.player_choice(params[:choice])
    @computer_weapon = @game.computer_choice
    @game.outcome
    erb(:game)
  end

  run! if app_file == $0
end
