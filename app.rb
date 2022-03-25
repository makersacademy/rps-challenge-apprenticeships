require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'
require './lib/multiplayer'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:first_player_name] = params[:first_player_name]
    session[:second_player_name] = params[:second_player_name]
    redirect '/welcome'
  end

  get '/welcome' do
    @first_player_name = session[:first_player_name]
    @second_player_name = session[:second_player_name]
    erb :player_one
  end

  post '/player-1' do
    session[:first_player_game] = params[:first_player_game]
    redirect '/second'
  end

  get '/second' do
    @first_player_name = session[:first_player_name]
    @second_player_name = session[:second_player_name]
    erb :player_two
  end

  post '/player-2' do
    session[:second_player_game] = params[:second_player_game]
    redirect '/multiplayer-result'
  end

  get '/multiplayer-result' do
    @first_player_name = session[:first_player_name]
    @second_player_name = session[:second_player_name]
    @first_player_game = session[:first_player_game]
    @second_player_game = session[:second_player_game]
    @first_player = Player.new(@first_player_name, @first_player_game)
    @second_player = Player.new(@second_player_name, @second_player_game)
    @new_multiplayer = Multiplayer.new(@first_player, @second_player)
    erb :multiplayer_result
  end

  get '/result' do
    @name = session[:name]
    @user_choice = session[:game]
    @new_game = Game.new
    @computer = @new_game.computer_choice
    erb :game_result
  end

  run! if app_file == $0
end
