require 'sinatra/base'
require './lib/computer'
require './lib/game.rb'
require './lib/player.rb'


class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/gamemode' do
    sessions[:gamemode] = params[:mode]
    redirect '/names'
  end

  get '/names' do
    erb :names
  end

  get '/play' do
    @game_mode = session[:gamemode]
    erb(:play)
  end
  
  run! if app_file == $0
end
