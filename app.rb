require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/mode-select' do
    session[:number_of_players] = params[:Mode].to_i
    if session[:number_of_players] == 2
      redirect('/two-player')
    elsif session[:number_of_players] == 1
      redirect('/one-player')
    end
  end

  get '/one-player' do
    erb :singleplayermenu
  end

  get '/two-player' do
    erb :multiplayermenu
  end

  post '/name-submit' do
    if params[:p2_name]
      player1 = Player.new(params[:p1_name])
      player2 = Player.new(params[:p2_name])
      session[:game] = Game.new(player1, player2)
    else
      player1 = Player.new(params[:p1_name])
      session[:game] = Game.new(player1)
    end
    redirect('/welcome')
  end

  get '/welcome' do
    @game = session[:game]
    erb :welcome_screen
  end

  get '/begin' do
    @players = session[:number_of_players]
    if @players == 1
      redirect('/game')
    elsif @players == 2
      redirect('/multiplayer-game')
    end
  end

  get '/game' do
    @game = session[:game]
    erb :game
  end

  get '/multiplayer-game' do
    @game = session[:game]
    erb :multiplayer_game
  end

  post '/move-submit' do
    @game = session[:game]
    @game.player_1.set_move(params[:player_1_choice])
    @game.player_2.set_move(params[:player_2_choice])
    redirect('/results')
  end

  get '/results' do
    @game = session[:game]
    erb :results
  end


  run! if app_file == $0
end
