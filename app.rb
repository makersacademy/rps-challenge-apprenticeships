require 'sinatra/base'
require './lib/game'
class App < Sinatra::Base


  get '/' do
    erb :form
  end

  post '/player_weapon' do
    p params
    @player_name = params[:player_name]
    erb :player_weapon
  end



  post '/result' do
    $game = Game.new(:player_weapon)
    @score = $game.result
    erb :result
  end
  


  run! if app_file == $0
end

