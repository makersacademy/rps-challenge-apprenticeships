require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/sign_in' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    "#{session[:player_1]} vs. Computer"
  end

  run! if app_file == $0
end
