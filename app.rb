require 'sinatra/base'
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    p session[:player_1_name]
    redirect to '/game'
  end

  get '/game' do
    p 'testing'
    @player_1_name = session[:player_1_name]
    p @player_1_name
    erb :game
  end



  run! if app_file == $0
end
