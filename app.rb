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
    erb :play
  end

  post '/play' do

    session[:player_weapon] = params[:weapon]
    @player_weapon = session[:player_weapon]
    session[:computer_weapon] = Computer.new.weapon
    @computer_weapon = session[:computer_weapon]
    @game = Game.new(@player_weapon.to_sym, @computer_weapon) #must convert user input (player_weapon, stored as a string) to symbol, otherwise cannot be called
    erb :play
  end

   run! if app_file == $0
end
