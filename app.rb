require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name].name
    erb(:play)
  end


  run! if app_file == $0
end
