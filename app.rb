require 'sinatra/base'
require 'sinatra/reloader' 
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

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
    @game = Game.create(player_1)
    redirect '/choose_weapon'
  end

  get '/choose_weapon' do
    erb :choose_weapon
  end

  post '/weapon_choice' do
    session[:weapon] = params[:weapon]
    redirect '/confirmation'
  end

  get '/confirmation' do
    @weapon = session[:weapon]
    @player_1_name = session[:player_1_name]
    erb :confirmation
  end

  run! if app_file == $0
end
