require "sinatra/base"
require './lib/computer'
require './lib/player'
require './lib/game'

class RockPaperScissor < Sinatra::Base
  enable :sessions
  before do
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post "/name" do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    # session[:player_name] = params[:player_name]
    redirect "/play"
  end

  get "/play" do
    @player_name = @game.player.name
    session[:player_choice] = params[:player_choice]
    erb :play
  end

  post "/choice" do
    @player_choice = @game.player.choice(session[:player_choice])
    session[:player_choice] = params[:player_choice]
    redirect "/results"
  end

  get "/results" do
    @player_choice = session[:player_choice]
    @computer_choice = @game.computer.choice
    @results = @game.winner(@player_choice, @computer_choice)
    erb :results
  end

  run! if app_file == $0
end
