require 'sinatra/base'
require './lib/player'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    $player_name = Player.new(params[:player_name])
    erb :play
  end

  get '/move' do
    erb :move
  end

  run! if app_file == $0
end
