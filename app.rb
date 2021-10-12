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
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_1_selection = session[:player_1_selection]
    erb :play
  end

  post '/selection' do
    session[:player_1_selection] = params[:selection]
    redirect '/play'
  end

  run! if app_file == $0
end
