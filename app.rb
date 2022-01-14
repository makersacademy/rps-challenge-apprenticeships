require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/sign_in' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    session[:time] = Time.now
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_2 = 'Computer' if @player_2.empty?
    erb(:play)
  end

  run! if app_file == $0
end
