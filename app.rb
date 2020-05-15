require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/test' do
    'test page'
  end

  get'/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end


  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  run! if app_file == $0
end
