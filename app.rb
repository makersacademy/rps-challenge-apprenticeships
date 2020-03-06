require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @game = $game
    erb :play
  end

  post '/play' do
    session[:player_weapon] = params[:weapon]
    return session[:player_weapon]
    session[:computer_item] = Computer.new.item
  end

   run! if app_file == $0
end
