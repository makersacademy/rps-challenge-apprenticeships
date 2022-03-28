require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play-game'
  end    

  post '/play-game' do
    @name = session[:name]
    erb :rps_game
  end

  run! if app_file == $0
end
