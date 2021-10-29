require 'sinatra/base'
require './lib/player'
require './lib/game'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    @player = Player.new(params[:player_name])
    $game = Game.new(@player)
    p $game
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/move' do
    @game = $game
    erb :move
  end

  run! if app_file == $0
end
