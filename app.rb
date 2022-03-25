require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  
  WEAPONS = [:Rock, :Paper, :Scissors]
  # RULES = { Rock: :Scissors,
  #           Scissors: :Paper
  #           Paper: :Rock }

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/weapon' do
    @player_name = params[:name]
    @weapon_1 = WEAPONS[0]
    @weapon_2 = WEAPONS[1]
    @weapon_3 = WEAPONS[2]
    erb :weapon
  end

  post '/result' do
    @player_weapon = params[:weapon]
    @computer_weapon = WEAPONS.sample
    
    @game = Game.new
    @result = @game.result
    erb @result.result
  end

  run! if app_file == $0
end
