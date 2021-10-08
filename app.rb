require "sinatra/base"
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
    # @player_1 = Player.new(params[:player_1_name])
    # session[:player_1_name] = params[:player_1_name]
    # @player_1 = Player.new(session[:player_1_name])
    #@player_1_name = params[:player_1_name]
    erb(:play)
  end

  post "/game" do
    @computer = Computer.new
    @player_1 = $player_1
    #@player_1_choice = params[:choice]
    @game = Game.new(@player_1, @computer)
    @player_weapon = @game.player_choice(params[:choice])
    @computer_weapon = @game.computer_choice
    @game.result
    erb(:game)
  end

  run! if app_file == $0
end
