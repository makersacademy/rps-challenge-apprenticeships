require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:username])
    redirect '/game'
  end

  get '/game' do
    redirect '/' unless $player
    @player_name = $player.name
    erb :game
  end

  run! if app_file == $0
end
