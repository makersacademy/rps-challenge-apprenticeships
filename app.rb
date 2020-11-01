require 'sinatra/base'
require_relative 'lib/player'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  get '/move_rock' do
    @player_name = $player.name
    erb :move_rock
  end

  get '/move_paper' do
    @player_name = $player.name
    erb :move_paper
  end

  get '/move_scissors' do
    @player_name = $player.name
    erb :move_scissors
  end

  run! if app_file == $0
end
