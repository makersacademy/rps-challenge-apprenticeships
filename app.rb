require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/weapon' do
    @player_name = params[:name]
    @weapon_1 = Game::rock
    @weapon_2 = Game::paper
    @weapon_3 = Game::scissors
    erb :weapon
  end

  post '/result' do
    @game = Game.new
    @player_weapon = params[:weapon]
    @computer_weapon = Game::WEAPONS.sample
    erb :result
    erb @game.result(@player_weapon.to_s,@computer_weapon.to_s)
  end

  #Do not modify the line above
  run! if app_file == $0
end
