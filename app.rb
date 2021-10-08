require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/game' do
    player1 = Player.new(params[:player_1_name])
    session[:game] = Game.new(player1)
    erb :game
  end

  post '/move_made' do
    @player_1_choice = params[:player_1_chose]
    redirect '/outcome'
  end

  get '/outcome' do
    @game = session[:game]
    erb :outcome
  end

  run! if app_file == $0
end
