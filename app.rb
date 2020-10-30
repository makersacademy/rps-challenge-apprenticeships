require 'sinatra/base'
require './lib/player'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/home' do
    erb :home
  end

  post '/play' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/result' do
    @player = $player
    p params[:name]
    @player.move_made(params[:move])
    redirect '/result'
  end

  get '/result' do
    @player = $player
    erb :result
  end

  run! if app_file == $0
end
