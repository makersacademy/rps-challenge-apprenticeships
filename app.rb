require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/' do 
    erb :index
  end

  post '/name-registered' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/player-choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/outcome'
  end

  get '/outcome' do
    new_game = Game.new(session[:player_choice])
    @outcome = new_game.run_game
    @game_choice = new_game.game_turn
    erb :outcome
  end

  run! if app_file == $0
end
