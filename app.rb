require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/players' do
    session[:player_one_name] = params[:player_one_name]
    redirect '/play'
  end

  get '/play' do 
    @player_one_name = session[:player_one_name]
    erb :play
  end


  run! if app_file == $0
end
