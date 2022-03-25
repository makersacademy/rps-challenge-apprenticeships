require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

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
    erb :game_result
  end

  run! if app_file == $0
end
