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
    # session[:game] = params[:game]
    # session[:game] = Game.new(@player_1, @computer)
    # @game = session[:game]
    @game = Game.new(@player_1, @computer)
    @player_weapon = @game.player_choice(params[:choice])
    # session[:computer_weapon] = @game.computer_choice
    # @computer_weapon = session[:computer_weapon]
    @computer_weapon = @game.computer_choice
    #@game_outcome = @game.outcome
    @game.outcome
    erb(:game)
  end

  run! if app_file == $0
end
