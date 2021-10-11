require "sinatra/base"
require "sinatra/reloader"
require "./lib/player"
require "./lib/game"
require "./lib/weapon"

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post "/name" do
    player1 = Player.new(params[:player1_name])
    @game = Game.create(player1)
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/options" do
    session[:game] = params[:game]
    redirect "/winner"
  end

  get "/winner" do
    @player_choice = session[:game]
    @computer_choice = @game.opponent_choice
    erb :winner
  end

  run! if app_file == $0
end
