require 'sinatra/base'
require './lib/player.rb'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  run! if app_file == $0

  get '/names' do
    erb :index
  end

  get '/test' do
    erb :index
  end

  post '/play' do
    # @player_1_name = params[:player_1_name]
    name = params[:player_1_name]
    player_1 = Player.new(name)
    @name = player_1.name
    erb :play
  end
end
