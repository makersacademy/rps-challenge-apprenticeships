require 'sinatra/base'


class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/test' do
    erb(:test)
  end

  get '/' do
    erb(:index)
  end

  get '/enter_name' do 
    erb(:enter_name)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb(:player_1_move)
  end

  run! if app_file == $0
end
