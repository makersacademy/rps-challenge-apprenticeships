require "sinatra/base"
require "./lib/computer.rb"
require "./lib/player.rb"
require "./lib/game.rb"

class RockPaperScissor < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    player = Player.new(params[:player_name])
    computer = Computer.new
    $game = Game.new(player, computer)
    # session[:player_name] = params[:player_name]
    redirect "/play"
  end

  get "/play" do
    @game = $game
    @player_name = @game.player.name
    session[:player_choice] = params[:player_choice]
    # @player_choice = @game.player.choice(params[:player_choice])
    erb :play
  end

  post "/choice" do
    @game = $game
    @player_choice = @game.player.choice(session[:player_choice])
    session[:player_choice] = params[:player_choice]
    redirect "/results"
  end

  get "/results" do
    @game = $game
    @player_choice = session[:player_choice]
    @computer_choice = @game.computer.choice
    @results = @game.winner(@player_choice, @computer_choice)
    erb :results
  end

  run! if app_file == $0
end
