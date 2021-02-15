require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player_1]
    @weapon = session[:weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    redirect '/play'
  end


  run! if app_file == $0
end
