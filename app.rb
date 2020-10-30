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

  run! if app_file == $0
end
