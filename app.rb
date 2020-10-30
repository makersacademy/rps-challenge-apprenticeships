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
    $opponent = Player.new("Opponent")
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/result' do
    @player = $player
    @player.move_made(params[:move])
    @opponent = $opponent
    @opponent.move_made(@opponent.available_move.sample)
    
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @opponent = $opponent
    erb :result
  end

  run! if app_file == $0
end
