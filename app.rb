require 'sinatra/base'
require_relative './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb :play
  end

  get '/play/rock' do
    @player_1 = $player_1
    @outcome = (@player_1.player_vs_computer('rock'))
    erb :rock
  end

  get '/play/paper' do
    @player_1 = $player_1
    @outcome = (@player_1.player_vs_computer('paper'))
    erb :paper
  end

  get '/play/scissors' do
    @player_1 = $player_1
    @outcome = (@player_1.player_vs_computer('scissors'))
    erb :scissors
  end

  run! if app_file == $0
end
