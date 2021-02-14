require 'sinatra/base'
require_relative './lib/player'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/instructions' do
    erb(:instructions)
  end

  get '/single-player' do
    erb(:single_player)
  end

  post '/name' do
    session[:player_name] = Player.new(params[:player])
    redirect '/single-player-game'
  end

  get '/single-player-game' do
    @player = session[:player_name]
    erb(:single_player_game)
  end

  
  run! if app_file == $0
end
