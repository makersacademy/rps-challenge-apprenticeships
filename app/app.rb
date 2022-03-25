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

  run! if app_file == $0
end
