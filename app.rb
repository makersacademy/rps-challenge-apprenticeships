require 'sinatra/base'
require 'sinatra/reloader' 
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
require_relative 'lib/weapon.rb'
require_relative 'lib/computer.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_weapon = Weapon.new(params[:weapon])
    computer_weapon = Computer.new.random_weapon
    @game = Game.create(player_1, player_weapon, computer_weapon)
    redirect '/result'
  end

  get '/result' do
    erb @game.result
  end

  run! if app_file == $0
end
