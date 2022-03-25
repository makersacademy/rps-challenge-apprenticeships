require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/results'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/gamemode' do
    session[:gamemode] = params[:mode]
    redirect '/getnames'
  end

  get '/getnames' do
    erb :names
  end

  post '/setnames' do
    Game.start_game(params[:player_one], params[:player_two]) if params[:player_two] != nil
    Game.start_game(params[:player_one]) if params[:player_two].nil?
    redirect '/play'
  end

  get '/play' do
    @game_mode = session[:gamemode]
    erb :play
  end

  post '/player_one_move' do
    @game.player_one.make_move(params[:move])
    redirect '/play'
  end

  post '/player_two_move' do
    @game.player_two.make_move(params[:move])
    redirect '/play'
  end
end
