require 'sinatra/base'
require 'sinatra/reloader'
require './lib/play'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = player_1
    erb :play
  end

  run! if app_file == $0
end
