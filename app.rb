require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    erb(:play)
  end

  run! if app_file == $0
end
