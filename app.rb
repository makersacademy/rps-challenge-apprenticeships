require 'sinatra/base'
require "sinatra/reloader"
require_relative "./lib/game.rb"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :test do
    register Sinatra::Reloader
  end
  
  get "/" do
    erb :index
  end

  get '/test' do
    'test page'
  end

  post "/name" do
    $game = Game.new(params[:player1], params[:player2])
    redirect "/play"
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    erb :play
  end

  post "/computation" do
    $game.move(params[:player_1_move], params[:player_2_move])
    redirect "/result"
  end

  get "/result" do
    @winner = $game.winner
    erb :result
  end

  run! if app_file == $0
end
