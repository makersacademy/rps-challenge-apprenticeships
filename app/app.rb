require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'


class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/playroom' do
    @player = Player.new(params[:player_name])
    erb :playroom
  end

  get '/play-rps' do
    erb :rps
  end

  post '/game-result' do
    @player_item = params[:rps]
    @computer_item = Computer.new.item
    @game = Game.new(@player_item, @computer_item)
    erb :game_result
  end

  run! if app_file == $0
end
