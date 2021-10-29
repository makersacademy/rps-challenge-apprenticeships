require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    @player = Player.new(params[:player_name])
    @computer = Player.new(@computer)
    $game = Game.new(@player, @computer)
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
