require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader
  # end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    p params
    $player_1 = Player.new(params[:player_1])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
