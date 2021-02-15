require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer_player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions 

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    session[:player_name] = @player_name
    erb(:name)
  end

  get '/test' do
    'test page'
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    @player = Player.new(session[:player_name])
    @computer_player = ComputerPlayer.new()
    @computer_player.random_weapon
    @player.set_weapon(params[:weapon])
    @game = Game.new(@player, @computer_player)
    erb(:result)
  end

  run! if app_file == $0
end
