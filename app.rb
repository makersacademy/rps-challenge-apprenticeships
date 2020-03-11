require 'sinatra/base'
require './lib/game.rb'
class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    #pass the name the user has submitted to the instance variable
    @player_name = params[:player_name]
    erb :choose_weapon
  end

  get '/result' do
    @player_weapon = params[:player_weapon]
    game = Game.new(@player_weapon)

    p "*********"
    p $player_weapon
    p "*********"

    @computer_weapon = game.choose_weapon
    p "*********"
    p @computer_weapon
    p "*********"

    @winner = game.choose_winner
    p "*********"
    p @winner
    p "*********"
    erb :result
  end

   run! if app_file == $0
end
