require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  get '/rock' do
    erb :rock
  end

  get '/paper' do
    erb :paper
  end

  get '/scissors' do
    erb :scissors
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  run! if app_file == $0
end
