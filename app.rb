require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/gameplay'
  end

  get '/gameplay' do
    @player_1_name = session[:player_1_name]
    erb :gameplay
  end


  run! if app_file == $0
end
